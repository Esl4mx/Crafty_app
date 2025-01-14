import 'package:crafty_app/core/services/firebase_auth_service.dart';
import 'package:crafty_app/features/auth/data/repos/auth_repo_imp.dart';
import 'package:crafty_app/features/auth/domain/repos/auth_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  getIt.registerSingleton<AuthRepo>(
      AuthRepoImp(firebaseAuthService: getIt<FirebaseAuthService>()));
}
