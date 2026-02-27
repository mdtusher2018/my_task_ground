import 'package:scube_task/src/core/base/failure.dart';
import 'package:scube_task/src/core/base/result.dart';
import 'package:scube_task/src/core/services/network/i_api_service.dart';
import 'package:scube_task/src/core/utils/api_end_points.dart';
import 'package:scube_task/src/data/models/profile_response.dart';
import 'package:scube_task/src/domain/repositories/i_profile_repositoty.dart';

/// ==========================================================
/// PROFILE REPOSITORY
/// ==========================================================
///
/// Handles API calls related to user profiles.
/// Returns [Result] objects to safely encapsulate success or failure.
final class ProfileRepository extends IProfileRepository {
  /// API client instance (injected via constructor)
  final IApiService _apiService;

  ProfileRepository(this._apiService);

  /// ----------------------------
  /// Fetch user profile
  /// ----------------------------
  /// Returns a [Result] containing either [ProfileResponse] or [Failure].
  @override
  Future<Result<ProfileResponse, Failure>> getProfile() async {
    return asyncGuard(() async {
      // Call API to get profile
      final result = await _apiService.get(ApiEndpoints.profile);

      // Parse response JSON to ProfileResponse model
      return ProfileResponse.fromJson(result);
    });
  }
}