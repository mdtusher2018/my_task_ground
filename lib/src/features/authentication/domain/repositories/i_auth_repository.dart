import 'package:scube_task/src/core/base/failure.dart';
import 'package:scube_task/src/core/base/repository.dart';
import 'package:scube_task/src/core/base/result.dart';
import 'package:scube_task/src/features/authentication/data/models/sign_in/signin_response.dart';

abstract base class IAuthRepository extends Repository {
  Future<Result<SigninResponse, Failure>> login(String email, String password);
}
