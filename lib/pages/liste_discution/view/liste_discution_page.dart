import 'package:date_repository/date_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_messagerie_firebase/flutter_messagerie_firebase.dart';
import 'package:messagerie_package/class/utilisateur.dart';
import 'package:messagerie_package/respository/utilisateur_repository.dart';

import '../bloc/liste_discution_bloc.dart';
import 'liste_discution_view.dart';

class ListeDiscutionPage extends StatelessWidget {
  const ListeDiscutionPage({super.key});

  static Page<dynamic> page() => const MaterialPage<dynamic>(
        child: ListeDiscutionPage(),
      );

  static Route<dynamic> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const ListeDiscutionPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => ListeDiscutionBloc(
        envoieUnMessageAUnUtilisateurUsecase:
            EnvoieUnMessageAUnUtilisateurUsecase(
          chambreDeDiscutionRepository:
              context.read<ChambreDeDiscutionRepository>(),
          dateRepository: context.read<DateRepository>(),
          messageRepository: context.read<MessageRepository>(),
        ),
        utilisateurRepository: context.read<UtilisateurRepository>(),
        recupereStreamListeChambresUsecase: RecupereStreamListeChambresUsecase(
          chambreRepository: context.read<ChambreDeDiscutionRepository>(),
        ),
        utilisateur: const Utilisateur(
          uid: 'uid1',
          nom: 'Nathan',
          urlPhoto: '',
        ),
      )
        ..add(const ListeDiscutionChargeChambre())
        ..add(
          const ListeDiscutionChargeUtilisateur(),
        ),
      child: const ListeDiscutionView(),
    );
  }
}
