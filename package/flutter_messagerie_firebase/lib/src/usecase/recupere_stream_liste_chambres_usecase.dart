import 'package:flutter_messagerie_firebase/flutter_messagerie_firebase.dart';

class RecupereStreamListeChambresUsecase {
  final ChambreDeDiscutionRepository _chambreRepository;

  RecupereStreamListeChambresUsecase({
    required ChambreDeDiscutionRepository chambreRepository,
  }) : _chambreRepository = chambreRepository;

  Stream<List<ChambreDeDiscution>> execute(
    RecupereStreamListeChambresCommand command,
  ) {
    return _chambreRepository
        .recupereListeChambreDeDiscutionStreamDUnUtilisateur(
      uid: command.uidUtilisateur,
    );
  }
}

class RecupereStreamListeChambresCommand {
  RecupereStreamListeChambresCommand({
    required this.uidUtilisateur,
  });

  final String uidUtilisateur;
}
