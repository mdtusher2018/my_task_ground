import 'package:scube_task/src/core/base/failure.dart';
import 'package:scube_task/src/core/base/result.dart';
import 'package:scube_task/src/core/services/storage/i_local_storage_service.dart';
import 'package:scube_task/src/core/services/storage/storage_key.dart';
import 'package:scube_task/src/data/models/signin_response.dart';
import 'package:scube_task/src/domain/entites/signin_entity.dart';
import 'package:scube_task/src/domain/repositories/i_auth_repository.dart';

/// ==========================================================
/// SIGNIN USE CASE
/// ==========================================================
///
/// Handles the user login process, including:
/// - input validation
/// - calling the authentication repository
/// - mapping response to [SigninEntity]
/// - saving access token locally
class SigninUseCase {
  final IAuthRepository authRepository;
  final ILocalStorageService localStorage;

  SigninUseCase({
    required this.authRepository,
    required this.localStorage,
  });

  /// Executes the login process
  ///
  /// Returns a [Result] containing either:
  /// - [SigninEntity] on success
  /// - [Failure] on error
  Future<Result<SigninEntity, Failure>> execute({
    required String email,
    required String password,
  }) async {
    email = email.trim();
    password = password.trim();

    // ---------------------------
    // Input Validation
    // ---------------------------
    if (email.isEmpty) {
      return FailureResult(
        Failure(type: FailureType.unknown, message: "Email cannot be empty."),
      );
    }

    if (password.isEmpty) {
      return FailureResult(
        Failure(type: FailureType.unknown, message: "Password cannot be empty."),
      );
    }

    if (password.length < 6 || password.length > 36) {
      return FailureResult(
        Failure(
          type: FailureType.unknown,
          message: "Password must be 6–36 characters.",
        ),
      );
    }

    // ---------------------------
    // Call Repository
    // ---------------------------
    final result = await authRepository.login(email, password);

    // Repository returned failure
    if (result is FailureResult) {
      return FailureResult((result as FailureResult).error);
    }

    // ---------------------------
    // Success Path
    // ---------------------------
    final data = (result as Success).data as SigninResponse;

    final entity = SigninEntity(accessToken: data.token);

    // Save access token securely
    await localStorage.saveKey(StorageKey.accessToken, entity.accessToken);

    return Success(entity);
  }
}