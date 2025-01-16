import 'package:equatable/equatable.dart';

//@firestoreSerializable
mixin UtilisateurMessagerieMixin on Equatable {
  // UtilisateurMessagerie({
  //   required this.nom,
  //   this.uid,
  //   this.urlPhoto,
  // });

  // factory UtilisateurMessagerie.fromJson(Map<String, Object?> json) =>
  //     _$UtilisateurMessagerieFromJson(json);
  //
  // Map<String, Object?> toJson() => _$UtilisateurMessagerieToJson(this);

  String? get uid;
  String get nom;
  String? get urlPhoto;

  @override
  List<Object?> get props => [
        uid,
        nom,
        urlPhoto,
      ];
}
