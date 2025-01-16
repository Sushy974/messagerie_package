import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/app_bloc.dart';
import 'app_view.dart';

class AppPage extends StatelessWidget {
  const AppPage({super.key});

  static Page<dynamic> page() => const MaterialPage<dynamic>(
        child: AppPage(),
      );

  static Route<dynamic> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const AppPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppBloc(
          authenticationRepository: context.read<AuthenticationRepository>()),
      child: const AppView(),
    );
  }
}
