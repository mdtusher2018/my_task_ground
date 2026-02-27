import 'package:scube_task/src/core/base/failure.dart';
import 'package:scube_task/src/core/base/repository.dart';
import 'package:scube_task/src/core/base/result.dart';
import 'package:scube_task/src/data/models/signin_response.dart';

/// ==========================================================
/// AUTH REPOSITORY INTERFACE
/// ==========================================================
///
/// Defines the contract for authentication-related data operations.
/// Extends the base [Repository] to use asyncGuard/guard for safe API calls.
abstract base class IAuthRepository extends Repository {
  
  /// Logs in a user with [email] and [password].
  ///
  /// Returns a [Result] containing either:
  /// - [SigninResponse] on success
  /// - [Failure] on error
  Future<Result<SigninResponse, Failure>> login(
    String email,
    String password,
  );
}