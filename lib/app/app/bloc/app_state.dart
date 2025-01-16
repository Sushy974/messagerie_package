part of 'app_bloc.dart';

class AppState extends Equatable {
  const AppState({
    this.user = User.empty,
    this.utilisateur,
  });

  AppState copyWith({
    User? user,
    Utilisateur? utilisateur,
  }) {
    return AppState(
      user: user ?? this.user,
      utilisateur: utilisateur ?? this.utilisateur,
    );
  }

  @override
  List<Object?> get props => [
        user,
        utilisateur,
      ];

  final User user;
  final Utilisateur? utilisateur;

  factory AppState.fromJson(Map<String, dynamic> map) {
    return AppState(
      user: User.fromJson(
        map['user'] as Map<String, dynamic>,
      ),
      utilisateur: map['utilisateur'] == null
          ? null
          : Utilisateur.fromJson(
              map['utilisateur'] as Map<String, dynamic>,
            ),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'user': user.toJson(),
      'utilisateur': utilisateur?.toJson(),
    };
  }
}
