import 'package:equatable/equatable.dart';
import 'package:flutter_messagerie_firebase/src/class/class.dart';

class UtilisateurMessagerieExemple extends Equatable
    with UtilisateurMessagerieMixin {
  @override
  final String nom;

  @override
  final String? uid;

  @override
  final String? urlPhoto;

  UtilisateurMessagerieExemple({
    required this.nom,
    this.uid,
    this.urlPhoto,
  });

  @override
  bool? get stringify => throw UnimplementedError();
}

class UtilisateurMessagerieBuilder {
  UtilisateurMessagerieBuilder({
    String? uid,
    String nom = '',
    String? urlPhoto,
  })  : _uid = uid,
        _urlPhoto = urlPhoto,
        _nom = nom;

  String? _uid;
  String _nom;
  String? _urlPhoto;

  UtilisateurMessagerieExemple build() {
    return UtilisateurMessagerieExemple(
      uid: _uid,
      nom: _nom,
      urlPhoto: _urlPhoto,
    );
  }

  UtilisateurMessagerieBuilder withId(String uid) {
    _uid = uid;
    return this;
  }

  UtilisateurMessagerieBuilder withNom(String nom) {
    _nom = nom;
    return this;
  }

  UtilisateurMessagerieBuilder withUrlPhoto(String urlPhoto) {
    _urlPhoto = urlPhoto;
    return this;
  }
}
