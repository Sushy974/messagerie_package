part of 'liste_discution_bloc.dart';

sealed class ListeDiscutionEvent extends Equatable {
  const ListeDiscutionEvent();
  @override
  List<Object> get props => [];
}

final class ListeDiscutionChargeChambre extends ListeDiscutionEvent {
  const ListeDiscutionChargeChambre();
}

final class ListeDiscutionChargeUtilisateur extends ListeDiscutionEvent {
  const ListeDiscutionChargeUtilisateur();
}

class ListeDiscutionEnvoieUnPremierMessage extends ListeDiscutionEvent {
  const ListeDiscutionEnvoieUnPremierMessage({
    required this.contenu,
    required this.destinataire,
  });

  final String contenu;
  final UtilisateurMessagerieMixin destinataire;
  @override
  List<Object> get props => [
        contenu,
        destinataire,
      ];
}
