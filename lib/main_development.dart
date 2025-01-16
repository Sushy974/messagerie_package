import 'package:authentication_repository/authentication_repository.dart';
import 'package:date_repository/date_repository.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_messagerie_firebase/flutter_messagerie_firebase.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:messagerie_package/app/app/bloc/app_bloc.dart';
import 'package:messagerie_package/bootstrap.dart';
import 'package:messagerie_package/class/utilisateur.dart';
import 'package:messagerie_package/pages/liste_discution/view/liste_discution_page.dart';
import 'package:messagerie_package/respository/utilisateur_repository.dart';

void main() {
  bootstrap(
    () async {
      // await Firebase.initializeApp(
      //   options: DefaultFirebaseOptions.currentPlatform,
      // );
      WidgetsFlutterBinding.ensureInitialized();

      HydratedBloc.storage = await HydratedStorage.build(
        storageDirectory: HydratedStorage.webStorageDirectory,
      );
      final mockUser = MockUser(
        uid: 'uid1',
        email: 'nathan.chateau@creapp-i.com',
      );
      final firestore = FakeFirebaseFirestore();
      final mockFirebaseAuth = MockFirebaseAuth(
        mockUser: mockUser,
        signedIn: true,
      );

      return MultiBlocProvider(
        providers: [
          RepositoryProvider<DateRepository>(
            create: (context) => RealDateRepository(),
          ),
          RepositoryProvider<MessageRepository>(
            create: (context) => FirestoreMessageRepositoryFakeFirestore(),
          ),
          RepositoryProvider<AuthenticationRepository>(
            create: (context) =>
                FakeAuthenticationRepository(firebaseAuth: mockFirebaseAuth),
          ),
          RepositoryProvider<ChambreDeDiscutionRepository>(
            create: (context) => ChambreDeDiscutionRepositoryFakeFirebase(
              firestore: ChambreDeDiscutionCollectionReference(firestore),
            ),
          ),
          RepositoryProvider<UtilisateurRepository>(
            create: (context) => UtilisateurRepositoryFakeFirebase(
              firestore: UtilisateurCollectionReference(
                firestore,
              ),
            )..initiliseDataBase(
                utilisateurs: [
                  const Utilisateur(
                    uid: 'uid1',
                    nom: 'Nathan',
                    urlPhoto: '',
                  ),
                  const Utilisateur(
                    uid: 'uid2',
                    nom: 'Alexandre',
                    urlPhoto: '',
                  ),
                ],
              ),
          )
        ],
        child: MaterialApp(
          home: BlocProvider(
            create: (context) => AppBloc(
              authenticationRepository:
                  context.read<AuthenticationRepository>(),
            )..add(const AppInitial()),
            child: const ListeDiscutionPage(),
          ),
        ),
      );
    },
  );
}
