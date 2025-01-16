import 'package:date_repository/date_repository.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_messagerie_firebase/src/class/class.dart';
import 'package:flutter_messagerie_firebase/src/class/utilisateur_messagerie_exemple.dart';
import 'package:flutter_messagerie_firebase/src/repository/chambre_de_discution_repository.dart';
import 'package:flutter_messagerie_firebase/src/repository/message_repository.dart';
import 'package:flutter_messagerie_firebase/src/usecase/envoie_un_message_a_un_utilisateur_usecase.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("En tant qu'utilisateur je peux envoyer une message", () {
    late MessagerieFixture fixture;
    setUp(() {
      fixture = MessagerieFixture();
    });
    test('cas 1 envoie un premier message sans groupe de créer', () async {
      await fixture.etantDonneLaListeDesUtilisateurs([
        UtilisateurMessagerieBuilder().withId('1').withNom('Nathan').build(),
        UtilisateurMessagerieBuilder().withId('2').withNom('Alice').build(),
      ]);
      await fixture.etantDonneQueJeSuisLUtilisateurConnecte(
        UtilisateurMessagerieBuilder().withId('1').withNom('Nathan').build(),
      );
      await fixture.lorsqueJenvoieUnMessageALUtilisateur(
        EnvoieUnMessageAUnUtilisateurCommand(
          expediteur: UtilisateurMessagerieBuilder()
              .withId('1')
              .withNom('Nathan')
              .build(),
          message: MessageBuilder().withUid('uid1').build(),
          destinataire: UtilisateurMessagerieBuilder()
              .withId('2')
              .withNom('Alice')
              .build(),
        ),
      );
      await fixture
          .alorsUneChambreDeDiscutionEntreLesDeuxUtilisateurAvecUnMessage(
        chambreDeDiscution: ChambreDeDiscutionBuilder()
            .withUid('uid1')
            .withUidUtilisateurConcerner(['1', '2'])
            .withDernierMessage(MessageBuilder().withUid('uid1').build())
            .build(),
      );
      await fixture.etLaChambrePossedeCeMessage(
        [
          MessageBuilder().withUid('uid1').build(),
        ],
      );
    });
  });
}

class MessagerieFixture {
  MessagerieFixture() {
    _firestore = FakeFirebaseFirestore();
    _messageRepository = FirestoreMessageRepositoryFakeFirestore();
    _dateRepository = FakeDateRepository()..fakeNow = DateTime(2025);
    _chambreDeDiscutionRepository = ChambreDeDiscutionRepositoryFakeFirebase(
      firestore: ChambreDeDiscutionCollectionReference(_firestore),
    );
    _envoieUnMessageAUnUtilisateurUsecase =
        EnvoieUnMessageAUnUtilisateurUsecase(
      messageRepository: _messageRepository,
      chambreDeDiscutionRepository: _chambreDeDiscutionRepository,
      dateRepository: _dateRepository,
    );
  }
  late FakeFirebaseFirestore _firestore;
  late EnvoieUnMessageAUnUtilisateurUsecase
      _envoieUnMessageAUnUtilisateurUsecase;
  late ChambreDeDiscutionRepository _chambreDeDiscutionRepository;
  late DateRepository _dateRepository;
  late MessageRepository _messageRepository;

  Future<void> etantDonneLaListeDesUtilisateurs(List<dynamic> listUser) async {}

  Future<void> etantDonneQueJeSuisLUtilisateurConnecte(
    UtilisateurMessagerieMixin user,
  ) async {}

  Future<void> etantDonneQueLaListeDesDiscutions(
    List<ChambreDeDiscution> list,
  ) async {
    await (_chambreDeDiscutionRepository
            as ChambreDeDiscutionRepositoryFakeFirebase)
        .initiliseDataBase(chambres: list);
  }

  Future<void> etantDonneLaListeDesMessages({
    required List<Message> list,
    required String uidChambre,
  }) async {
    final chambreRef =
        _chambreDeDiscutionRepository.recupereDocumentReference(uidChambre);
    _messageRepository.initialise(
      firestore: MessageCollectionReference(
        chambreRef,
      ),
    );
    await (_messageRepository as FirestoreMessageRepositoryFakeFirestore)
        .initiliseDataBase(
      messages: list,
    );
  }

  Future<void> lorsqueJenvoieUnMessageALUtilisateur(
      EnvoieUnMessageAUnUtilisateurCommand
          envoieUnMessageAUnUtilisateurCommand) async {
    await _envoieUnMessageAUnUtilisateurUsecase
        .execute(envoieUnMessageAUnUtilisateurCommand);
  }

  Future<void> alorsUneChambreDeDiscutionEntreLesDeuxUtilisateurAvecUnMessage({
    required ChambreDeDiscution chambreDeDiscution,
  }) async {
    final chambre =
        await _chambreDeDiscutionRepository.recupereChambreDeDiscutionParID(
      uid: 'uid1',
    );

    final list =
        await _chambreDeDiscutionRepository.recupereListeChambreDeDiscution();
    debugPrint('list $list');

    expect(chambre, chambreDeDiscution);
  }

  Future<void> etLaChambrePossedeCeMessage(List<Message> message) async {
    final listMessage = await _messageRepository.recupereListeMessage();
    debugPrint('actual $listMessage');
    debugPrint('matcher $message');
    expect(listMessage, message);
  }
}
