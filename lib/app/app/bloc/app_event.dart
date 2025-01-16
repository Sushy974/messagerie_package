part of 'app_bloc.dart';

sealed class AppEvent extends Equatable {
  const AppEvent();
  @override
  List<Object> get props => [];
}

final class AppInitial extends AppEvent {
  const AppInitial();
}

final class AppUserChanged extends AppEvent {
  const AppUserChanged(this.utilisateur);

  final Utilisateur utilisateur;
  @override
  List<Object> get props => [utilisateur];
}
