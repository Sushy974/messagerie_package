import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_messagerie_firebase/flutter_messagerie_firebase.dart';
import 'package:messagerie_package/class/firestore_serializable.dart';

part 'utilisateur.g.dart';

@firestoreSerializable
class Utilisateur extends Equatable with UtilisateurMessagerieMixin {
  const Utilisateur({
    required this.nom,
    required this.uid,
    required this.urlPhoto,
  });

  factory Utilisateur.fromJson(Map<String, Object?> json) =>
      _$UtilisateurFromJson(json);

  Map<String, Object?> toJson() => _$UtilisateurToJson(this);

  Utilisateur copyWith({
    String? nom,
    String? uid,
    String? urlPhoto,
  }) {
    return Utilisateur(
      nom: nom ?? this.nom,
      uid: uid ?? this.uid,
      urlPhoto: urlPhoto ?? this.urlPhoto,
    );
  }

  @override
  final String nom;
  @Id()
  @override
  final String? uid;

  @override
  final String? urlPhoto;

  @override
  List<Object?> get props => [
        nom,
        uid,
        urlPhoto,
      ];
}

@Collection<Utilisateur>('utilisateurs')
final utilisateursRef = UtilisateurCollectionReference();
