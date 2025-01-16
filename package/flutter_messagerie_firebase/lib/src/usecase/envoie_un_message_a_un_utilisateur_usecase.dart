import 'package:date_repository/date_repository.dart';
import 'package:flutter_messagerie_firebase/src/class/class.dart';
import 'package:flutter_messagerie_firebase/src/repository/chambre_de_discution_repository.dart';
import 'package:flutter_messagerie_firebase/src/repository/message_repository.dart';

class EnvoieUnMessageAUnUtilisateurUsecase {
  EnvoieUnMessageAUnUtilisateurUsecase({
    required ChambreDeDiscutionRepository chambreDeDiscutionRepository,
    required DateRepository dateRepository,
    required MessageRepository messageRepository,
  })  : _dateRepository = dateRepository,
        _messageRepository = messageRepository,
        _chambreDeDiscutionRepository = chambreDeDiscutionRepository;

  final ChambreDeDiscutionRepository _chambreDeDiscutionRepository;
  final MessageRepository _messageRepository;
  final DateRepository _dateRepository;

  Future<void> execute(EnvoieUnMessageAUnUtilisateurCommand command) async {
    final uidChambre = await _chambreDeDiscutionRepository.creerUneChambre(
      dateDeCreation: _dateRepository.now,
      dateDeDernierModification: _dateRepository.now,
      message: command.message,
      uidDestinatair: command.destinataire.uid!,
      uidExpediteur: command.expediteur.uid!,
      urlImageDiscution: '',
    );
    final chambreCreer =
        _chambreDeDiscutionRepository.recupereDocumentReference(uidChambre);
    _messageRepository.initialise(
      firestore: MessageCollectionReference(
        chambreCreer,
      ),
    );
    final uidMessage =
        await _messageRepository.envoieUnMessage(message: command.message);
    final messageRecupere =
        await _messageRepository.recupereMessageParID(uid: uidMessage);
    final chambreRecupere = await _chambreDeDiscutionRepository
        .recupereChambreDeDiscutionParID(uid: uidChambre);
    await _chambreDeDiscutionRepository.modifieChambreDeDiscution(
      chambreDeDiscution: chambreRecupere!.copyWith(
        dernierMessage: messageRecupere,
      ),
    );
  }
}

class EnvoieUnMessageAUnUtilisateurCommand {
  EnvoieUnMessageAUnUtilisateurCommand({
    required this.message,
    required this.destinataire,
    required this.expediteur,
  });

  final Message message;
  final UtilisateurMessagerieMixin destinataire;
  final UtilisateurMessagerieMixin expediteur;
}
