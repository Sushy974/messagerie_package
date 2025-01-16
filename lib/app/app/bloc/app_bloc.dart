import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:messagerie_package/class/utilisateur.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends HydratedBloc<AppEvent, AppState> {
  AppBloc({
    required AuthenticationRepository authenticationRepository,
  })  : _authenticationRepository = authenticationRepository,
        super(const AppState()) {
    on<AppInitial>(_onAppInitial);
    on<AppUserChanged>(_onUserChanged);
  }

  final AuthenticationRepository _authenticationRepository;

  Future<void> _onAppInitial(
    AppInitial event,
    Emitter<AppState> emit,
  ) async {
    await emit.forEach(
      _authenticationRepository.user,
      onData: (data) => state.copyWith(
        user: data,
      ),
    );
  }

  FutureOr<void> _onUserChanged(
    AppUserChanged event,
    Emitter<AppState> emit,
  ) {
    emit(state.copyWith(utilisateur: event.utilisateur));
  }

  @override
  AppState? fromJson(Map<String, dynamic> json) {
    return AppState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(AppState state) {
    return state.toJson();
  }
}
