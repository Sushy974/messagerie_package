import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_messagerie_firebase/flutter_messagerie_firebase.dart';
import 'package:formz/formz.dart';
import 'package:messagerie_package/class/utilisateur.dart';
import 'package:messagerie_package/respository/utilisateur_repository.dart';

part 'liste_discution_event.dart';
part 'liste_discution_state.dart';

class ListeDiscutionBloc
    extends Bloc<ListeDiscutionEvent, ListeDiscutionState> {
  ListeDiscutionBloc({
    required RecupereStreamListeChambresUsecase
        recupereStreamListeChambresUsecase,
    required UtilisateurRepository utilisateurRepository,
    required EnvoieUnMessageAUnUtilisateurUsecase
        envoieUnMessageAUnUtilisateurUsecase,
    required Utilisateur utilisateur,
  })  : _recupereStreamListeChambresUsecase =
            recupereStreamListeChambresUsecase,
        _utilisateurRepository = utilisateurRepository,
        _envoieUnMessageAUnUtilisateurUsecase =
            envoieUnMessageAUnUtilisateurUsecase,
        super(
          ListeDiscutionState(
            utilisateur: utilisateur,
          ),
        ) {
    on<ListeDiscutionChargeChambre>(_onListeDiscutionChargeChambre);
    on<ListeDiscutionChargeUtilisateur>(_onListeDiscutionChargeUtilisateur);
    on<ListeDiscutionEnvoieUnPremierMessage>(
      _onListeDiscutionEnvoieUnPremierMessage,
    );
  }

  final RecupereStreamListeChambresUsecase _recupereStreamListeChambresUsecase;
  final UtilisateurRepository _utilisateurRepository;
  final EnvoieUnMessageAUnUtilisateurUsecase
      _envoieUnMessageAUnUtilisateurUsecase;

  Future<void> _onListeDiscutionChargeChambre(
    ListeDiscutionChargeChambre event,
    Emitter<ListeDiscutionState> emit,
  ) async {
    emit(state.copyWith(statusListeChambres: FormzSubmissionStatus.inProgress));
    await emit.forEach(
      _recupereStreamListeChambresUsecase
          .execute(RecupereStreamListeChambresCommand(uidUtilisateur: 'uid1')),
      onData: (data) => state.copyWith(
        listeChambres: data,
        statusListeChambres: FormzSubmissionStatus.success,
      ),
    );
  }

  Future<void> _onListeDiscutionChargeUtilisateur(
    ListeDiscutionChargeUtilisateur event,
    Emitter<ListeDiscutionState> emit,
  ) async {
    emit(state.copyWith(statusListeChambres: FormzSubmissionStatus.inProgress));
    await emit.forEach(
      _utilisateurRepository.recupereStreamListeUtilisateur(),
      onData: (data) => state.copyWith(
        listUtilisateurMessagerie: data,
        statusListeChambres: FormzSubmissionStatus.success,
      ),
    );
  }

  Future<void> _onListeDiscutionEnvoieUnPremierMessage(
    ListeDiscutionEnvoieUnPremierMessage event,
    Emitter<ListeDiscutionState> emit,
  ) async {
    await _envoieUnMessageAUnUtilisateurUsecase
        .execute(EnvoieUnMessageAUnUtilisateurCommand(
      message: MessageText(contenu: event.contenu),
      destinataire: event.destinataire,
      expediteur: state.utilisateur,
    ));
  }
}
