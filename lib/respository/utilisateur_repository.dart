import 'package:messagerie_package/class/utilisateur.dart';

abstract class UtilisateurRepository {
  Future<String> creerUtilisateur(Utilisateur utilisateur);
  Future<void> modifieUtilisateur(Utilisateur utilisateur);
  Future<Utilisateur?> recupereUtilisateurParId(String id);
  Stream<List<Utilisateur>> recupereStreamListeUtilisateur();

  Future<List<Utilisateur>> recupereListeUtilisateur();
}

class UtilisateurRepositoryFakeFirebase extends UtilisateurRepository {
  UtilisateurRepositoryFakeFirebase({
    required UtilisateurCollectionReference firestore,
  }) : _firestore = firestore;

  final UtilisateurCollectionReference _firestore;

  Future<void> initiliseDataBase({
    required List<Utilisateur> utilisateurs,
  }) async {
    for (final utilisateur in utilisateurs) {
      await _firestore.reference.doc(utilisateur.uid).set(utilisateur);
    }
  }

  Future<List<Utilisateur>> get list => _firestore.get().then(
        (value) => value.docs.map((e) => e.data).toList(),
      );

  @override
  Future<String> creerUtilisateur(Utilisateur utilisateur) async {
    final length = await list.then(
      (value) => value.length,
    );
    final uid = 'uid$length';
    await _firestore.reference.doc(uid).set(
          utilisateur.copyWith(
            uid: uid,
          ),
        );
    return Future.value(uid);
  }

  @override
  Future<void> modifieUtilisateur(Utilisateur utilisateur) async {
    await _firestore.reference.doc(utilisateur.uid).set(utilisateur);
  }

  @override
  Future<List<Utilisateur>> recupereListeUtilisateur() {
    return list;
  }

  @override
  Stream<List<Utilisateur>> recupereStreamListeUtilisateur() {
    return _firestore.snapshots().map(
          (event) => event.docs.map((e) => e.data).toList(),
        );
  }

  @override
  Future<Utilisateur?> recupereUtilisateurParId(String id) async {
    return _firestore.doc(id).get().then((value) => value.data);
  }
}
