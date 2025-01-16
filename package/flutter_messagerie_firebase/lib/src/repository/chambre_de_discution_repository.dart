import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_messagerie_firebase/src/class/class.dart';

abstract class ChambreDeDiscutionRepository {
  DocumentReference<ChambreDeDiscution> recupereDocumentReference(
    String uid,
  );

  Future<ChambreDeDiscution?> recupereChambreDeDiscutionParID(
      {required String uid});

  Future<String> creerUneChambre({
    required String uidDestinatair,
    required String uidExpediteur,
    required String urlImageDiscution,
    required DateTime dateDeDernierModification,
    required DateTime dateDeCreation,
    required Message message,
  });

  Future<void> modifieChambreDeDiscution({
    required ChambreDeDiscution chambreDeDiscution,
  });
  Future<List<ChambreDeDiscution>> recupereListeChambreDeDiscution();
  Stream<List<ChambreDeDiscution>>
      recupereListeChambreDeDiscutionStreamDUnUtilisateur({
    required String uid,
  });
}

class ChambreDeDiscutionRepositoryFirebase
    extends ChambreDeDiscutionRepository {
  ChambreDeDiscutionRepositoryFirebase({
    required ChambreDeDiscutionCollectionReference firestore,
  }) : _firestore = firestore;

  final ChambreDeDiscutionCollectionReference _firestore;

  @override
  Future<ChambreDeDiscution?> recupereChambreDeDiscutionParID({
    required String uid,
  }) async {
    return _firestore.doc(uid).get().then((value) => value.data);
  }

  @override
  Future<String> creerUneChambre({
    required String uidDestinatair,
    required String uidExpediteur,
    required String urlImageDiscution,
    required DateTime dateDeDernierModification,
    required DateTime dateDeCreation,
    required Message message,
  }) {
    final chambreDeDiscution = ChambreDeDiscution(
      uidUtilisateurConcerner: [uidExpediteur, uidDestinatair],
      dernierMessage: message,
      urlImageDiscution: urlImageDiscution,
      dateDeCreation: dateDeCreation,
      dateDeDernierModification: dateDeDernierModification,
      uidUtilisateurAyantLueLeDernierMessage: const [],
    );

    return _firestore.add(chambreDeDiscution).then((value) => value.id);
  }

  @override
  Future<List<ChambreDeDiscution>> recupereListeChambreDeDiscution() {
    return _firestore.get().then(
          (value) => value.docs
              .map(
                (e) => e.data,
              )
              .toList(),
        );
  }

  @override
  DocumentReference<ChambreDeDiscution> recupereDocumentReference(String uid) {
    return _firestore.doc(uid).reference;
  }

  @override
  Future<void> modifieChambreDeDiscution(
      {required ChambreDeDiscution chambreDeDiscution}) {
    return _firestore.reference
        .doc(chambreDeDiscution.uid)
        .set(chambreDeDiscution);
  }

  @override
  Stream<List<ChambreDeDiscution>>
      recupereListeChambreDeDiscutionStreamDUnUtilisateur(
          {required String uid}) {
    return _firestore.reference
        .where('uidUtilisateurConcerner', arrayContains: uid)
        .snapshots()
        .map(
          (event) => event.docs
              .map(
                (e) => e.data(),
              )
              .toList(),
        );
  }
}

class ChambreDeDiscutionRepositoryFakeFirebase
    extends ChambreDeDiscutionRepositoryFirebase {
  ChambreDeDiscutionRepositoryFakeFirebase({
    required super.firestore,
  });

  Future<List<ChambreDeDiscution>> get list => _firestore.get().then(
        (value) => value.docs
            .map(
              (e) => e.data,
            )
            .toList(),
      );

  Future<void> initiliseDataBase({
    required List<ChambreDeDiscution> chambres,
  }) async {
    for (final chambre in chambres) {
      await _firestore.reference.doc(chambre.uid).set(chambre);
    }
  }

  @override
  Future<String> creerUneChambre({
    required String uidDestinatair,
    required String uidExpediteur,
    required String urlImageDiscution,
    required DateTime dateDeDernierModification,
    required DateTime dateDeCreation,
    required Message message,
  }) async {
    final chambreDeDiscution = ChambreDeDiscution(
      uidUtilisateurConcerner: [uidExpediteur, uidDestinatair],
      dernierMessage: message,
      urlImageDiscution: urlImageDiscution,
      dateDeCreation: dateDeCreation,
      dateDeDernierModification: dateDeDernierModification,
      uidUtilisateurAyantLueLeDernierMessage: const [],
    );

    final length = await list.then(
      (value) => value.length,
    );
    final uid = 'uid${length + 1}';

    return _firestore.reference
        .doc(uid)
        .set(chambreDeDiscution.copyWith(uid: uid))
        .then((_) => uid);
  }
}
