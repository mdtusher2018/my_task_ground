import 'package:scube_task/src/core/base/failure.dart';
import 'package:scube_task/src/core/base/result.dart';
import 'package:scube_task/src/core/services/network/i_api_service.dart';
import 'package:scube_task/src/core/utils/api_end_points.dart';
import 'package:scube_task/src/data/models/signin_response.dart';
import 'package:scube_task/src/domain/repositories/i_auth_repository.dart';

/// ==========================================================
/// AUTH REPOSITORY
/// ==========================================================
///
/// Handles authentication-related API calls.
/// Uses [IApiService] for network requests and [Result]/[Failure] for safe error handling.
final class AuthRepository extends IAuthRepository {
  /// API client instance (injected via constructor)
  final IApiService api;

  AuthRepository(this.api);

  /// ----------------------------
  /// Login method
  /// ----------------------------
  /// Sends email and password to the login endpoint.
  /// Returns a [Result] containing either [SigninResponse] or [Failure].
  @override
  Future<Result<SigninResponse, Failure>> login(String email, String password) {
    // asyncGuard handles exceptions and maps them to Failure
    return asyncGuard(() async {
      // POST request to login endpoint
      final res = await api.post(ApiEndpoints.signin, {
        "email": email,
        "password": password,
      });

      // Map response JSON to SigninResponse model
      return SigninResponse.fromJson(res);
    });
  }
}