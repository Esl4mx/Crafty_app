import 'package:crafty_app/core/errors/exceptions.dart';
import 'package:crafty_app/core/errors/failures.dart';
import 'package:crafty_app/core/services/firebase_auth_service.dart';
import 'package:crafty_app/features/auth/data/models/user_model.dart';
import 'package:crafty_app/features/auth/domain/entites/user_entity.dart';
import 'package:crafty_app/features/auth/domain/repos/auth_repo.dart';
import 'package:dartz/dartz.dart';

class AuthRepoImp extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthRepoImp({required this.firebaseAuthService});
  @override
  Future<Either<Failures, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String name) async {
    try {
      var user = await firebaseAuthService.createUserWithEmailAndPassword(
          email: email, password: password);
      return right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      return left(ServerFailure("An error occurred. Please try again."));
    }
  }
}
