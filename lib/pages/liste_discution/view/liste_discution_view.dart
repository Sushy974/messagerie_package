import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import '../bloc/liste_discution_bloc.dart';

class ListeDiscutionView extends StatelessWidget {
  const ListeDiscutionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Liste discution',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: BlocBuilder<ListeDiscutionBloc, ListeDiscutionState>(
              buildWhen: (previous, current) =>
                  previous.listUtilisateurMessagerie !=
                  current.listUtilisateurMessagerie,
              builder: (context, state) {
                return ListView.separated(
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 10),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: state.listUtilisateurMessagerie.length,
                  itemBuilder: (context, index) {
                    if (state.statusListeChambres.isInProgress) {
                      return const CircularProgressIndicator();
                    }
                    return Container(
                      color: Colors.blueAccent.withValues(
                        alpha: 80,
                      ),
                      width: state.listUtilisateurMessagerie[index].nom.length
                              .toDouble() *
                          18,
                      child: ListTile(
                        title: Text(
                          state.listUtilisateurMessagerie[index].nom,
                        ),
                        onTap: () => context.read<ListeDiscutionBloc>().add(
                              ListeDiscutionEnvoieUnPremierMessage(
                                contenu: '',
                                destinataire:
                                    state.listUtilisateurMessagerie[index],
                              ),
                            ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          Expanded(
            flex: 10,
            child: BlocBuilder<ListeDiscutionBloc, ListeDiscutionState>(
              buildWhen: (previous, current) =>
                  previous.listeChambres != current.listeChambres,
              builder: (context, state) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: state.listeChambres.length,
                  itemBuilder: (context, index) {
                    if (state.statusListeChambres.isInProgress) {
                      return const CircularProgressIndicator();
                    }
                    return ListTile(
                      title: Text(
                        state
                            .listeChambres[index].uidUtilisateurConcerner.first,
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
