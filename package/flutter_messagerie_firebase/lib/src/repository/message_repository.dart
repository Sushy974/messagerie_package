import 'package:flutter_messagerie_firebase/src/class/chambre_de_discution.dart';

abstract class MessageRepository {
  void initialise({required MessageCollectionReference firestore});

  Future<String> envoieUnMessage({
    required Message message,
  });

  Future<List<Message>> recupereListeMessage();
  Stream<List<Message>> recupereListeMessageStream();

  Future<Message?> recupereMessageParID({required String uid});
}

class FirestoreMessageRepositoryFirestore extends MessageRepository {
  FirestoreMessageRepositoryFirestore();

  late MessageCollectionReference _firestore;

  @override
  void initialise({required MessageCollectionReference firestore}) {
    _firestore = firestore;
  }

  @override
  Future<String> envoieUnMessage({
    required Message message,
  }) async {
    return await _firestore.add(message).then((value) => value.id);
  }

  @override
  Future<List<Message>> recupereListeMessage() {
    return _firestore.get().then(
          (value) => value.docs.map((e) => e.data).toList(),
        );
  }

  @override
  Stream<List<Message>> recupereListeMessageStream() {
    return _firestore.snapshots().map(
          (event) => event.docs
              .map(
                (e) => e.data,
              )
              .toList(),
        );
  }

  @override
  Future<Message?> recupereMessageParID({required String uid}) async {
    return _firestore.doc(uid).get().then((value) => value.data);
  }
}

class FirestoreMessageRepositoryFakeFirestore
    extends FirestoreMessageRepositoryFirestore {
  Future<List<Message>> get list => _firestore.get().then(
        (value) => value.docs.map((e) => e.data).toList(),
      );

  Future<void> initiliseDataBase({required List<Message> messages}) async {
    for (final message in messages) {
      await _firestore.add(message);
    }
  }

  @override
  Future<String> envoieUnMessage({
    required Message message,
  }) async {
    final length = await list.then((value) => value.length);
    final uid = 'uid${length + 1}';

    await _firestore.reference.doc(uid).set(message.copyWith(uid: uid));
    return Future.value(uid);
  }
}
