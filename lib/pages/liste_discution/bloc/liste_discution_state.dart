part of 'liste_discution_bloc.dart';

class ListeDiscutionState extends Equatable {
  const ListeDiscutionState({
    this.listeChambres = const [],
    this.listUtilisateurMessagerie = const [],
    this.statusListeChambres = FormzSubmissionStatus.initial,
    required this.utilisateur,
  });

  final List<ChambreDeDiscution> listeChambres;
  final List<UtilisateurMessagerieMixin> listUtilisateurMessagerie;
  final FormzSubmissionStatus statusListeChambres;
  final Utilisateur utilisateur;

  ListeDiscutionState copyWith({
    List<ChambreDeDiscution>? listeChambres,
    FormzSubmissionStatus? statusListeChambres,
    List<UtilisateurMessagerieMixin>? listUtilisateurMessagerie,
    Utilisateur? utilisateur,
  }) {
    return ListeDiscutionState(
      listeChambres: listeChambres ?? this.listeChambres,
      statusListeChambres: statusListeChambres ?? this.statusListeChambres,
      listUtilisateurMessagerie:
          listUtilisateurMessagerie ?? this.listUtilisateurMessagerie,
      utilisateur: utilisateur ?? this.utilisateur,
    );
  }

  @override
  List<Object> get props => [
        listeChambres,
        statusListeChambres,
        listUtilisateurMessagerie,
        utilisateur,
      ];
}
