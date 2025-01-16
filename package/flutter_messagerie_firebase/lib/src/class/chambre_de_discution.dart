import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_messagerie_firebase/src/class/firestore_serializable.dart';

part 'chambre_de_discution.g.dart';
part 'message.dart';
part 'message_text.dart';

@firestoreSerializable
class ChambreDeDiscution extends Equatable {
  ChambreDeDiscution({
    this.uid,
    required this.uidUtilisateurConcerner,
    required this.dernierMessage,
    required this.urlImageDiscution,
    required this.dateDeCreation,
    required this.dateDeDernierModification,
    required this.uidUtilisateurAyantLueLeDernierMessage,
  });

  @Id()
  final String? uid;
  final List<String> uidUtilisateurConcerner;
  final Message? dernierMessage;
  final String urlImageDiscution;
  final DateTime dateDeCreation;
  final DateTime dateDeDernierModification;
  final List<String> uidUtilisateurAyantLueLeDernierMessage;

  factory ChambreDeDiscution.fromJson(Map<String, Object?> json) =>
      _$ChambreDeDiscutionFromJson(json);

  Map<String, Object?> toJson() => _$ChambreDeDiscutionToJson(this);

  ChambreDeDiscution copyWith({
    String? uid,
    List<String>? uidUtilisateurConcerner,
    Message? dernierMessage,
    String? urlImageDiscution,
    DateTime? dateDeCreation,
    DateTime? dateDeDernierModification,
    List<String>? uidUtilisateurAyantLueLeDernierMessage,
  }) {
    return ChambreDeDiscution(
      uid: uid ?? this.uid,
      uidUtilisateurConcerner:
          uidUtilisateurConcerner ?? this.uidUtilisateurConcerner,
      dernierMessage: dernierMessage ?? this.dernierMessage,
      urlImageDiscution: urlImageDiscution ?? this.urlImageDiscution,
      dateDeCreation: dateDeCreation ?? this.dateDeCreation,
      dateDeDernierModification:
          dateDeDernierModification ?? this.dateDeDernierModification,
      uidUtilisateurAyantLueLeDernierMessage:
          uidUtilisateurAyantLueLeDernierMessage ??
              this.uidUtilisateurAyantLueLeDernierMessage,
    );
  }

  @override
  List<Object?> get props => [
        uid,
        uidUtilisateurConcerner,
        dernierMessage,
        urlImageDiscution,
        dateDeCreation,
        dateDeDernierModification,
        uidUtilisateurAyantLueLeDernierMessage,
      ];
}

@Collection<ChambreDeDiscution>('chambre_de_discutions')
@Collection<Message>('chambre_de_discutions/*/messages')
final chambreDeDiscutionsRef = ChambreDeDiscutionCollectionReference();

class ChambreDeDiscutionBuilder {
  List<String>? _uidUtilisateurConcerner;
  Message? _dernierMessage;
  String? _urlImageDiscution;
  DateTime? _dateDeCreation;
  DateTime? _dateDeDernierModification;
  List<String>? _uidUtilisateurAyantLueLeDernierMessage;
  String? _uid;

  ChambreDeDiscution build() {
    return ChambreDeDiscution(
      uid: _uid ?? '',
      uidUtilisateurConcerner: _uidUtilisateurConcerner ?? [],
      dernierMessage: _dernierMessage ?? MessageBuilder().build(),
      urlImageDiscution: _urlImageDiscution ?? '',
      dateDeCreation: _dateDeCreation ?? DateTime(2025),
      dateDeDernierModification: _dateDeDernierModification ?? DateTime(2025),
      uidUtilisateurAyantLueLeDernierMessage:
          _uidUtilisateurAyantLueLeDernierMessage ?? [],
    );
  }

  ChambreDeDiscutionBuilder withUid(String uid) {
    _uid = uid;
    return this;
  }

  ChambreDeDiscutionBuilder withUidUtilisateurConcerner(
      List<String> uidUtilisateurConcerner) {
    _uidUtilisateurConcerner = uidUtilisateurConcerner;
    return this;
  }

  ChambreDeDiscutionBuilder withDernierMessage(Message dernierMessage) {
    _dernierMessage = dernierMessage;
    return this;
  }

  ChambreDeDiscutionBuilder withUrlImageDiscution(String urlImageDiscution) {
    _urlImageDiscution = urlImageDiscution;
    return this;
  }

  ChambreDeDiscutionBuilder withDateDeCreation(DateTime dateDeCreation) {
    _dateDeCreation = dateDeCreation;
    return this;
  }

  ChambreDeDiscutionBuilder withDateDeDernierModification(
      DateTime dateDeDernierModification) {
    _dateDeDernierModification = dateDeDernierModification;
    return this;
  }

  ChambreDeDiscutionBuilder withUidUtilisateurAyantLueLeDernierMessage(
      List<String> uidUtilisateurAyantLueLeDernierMessage) {
    _uidUtilisateurAyantLueLeDernierMessage =
        uidUtilisateurAyantLueLeDernierMessage;
    return this;
  }
}
