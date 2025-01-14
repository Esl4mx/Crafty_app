import 'package:crafty_app/core/errors/failures.dart';
import 'package:crafty_app/features/auth/domain/entites/user_entity.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepo {
  Future<Either<Failures, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String name);
}
