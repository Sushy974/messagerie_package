import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messagerie_package/app/app/bloc/app_bloc.dart';
import 'package:messagerie_package/respository/utilisateur_repository.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppBloc, AppState>(
      listenWhen: (previous, current) => previous.user != current.user,
      listener: (context, state) async {
        final utilisateur = await context
            .read<UtilisateurRepository>()
            .recupereUtilisateurParId(state.user.id);
        print('AppUserChanged');
        print(utilisateur);
        context.read<AppBloc>().add(AppUserChanged(utilisateur!));
      },
      child: Container(),
    );
  }
}
