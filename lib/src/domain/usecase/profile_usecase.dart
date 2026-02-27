import 'package:scube_task/src/core/base/failure.dart';
import 'package:scube_task/src/core/base/result.dart';
import 'package:scube_task/src/data/models/profile_response.dart';
import 'package:scube_task/src/domain/entites/user_profile_entity.dart';
import 'package:scube_task/src/domain/repositories/i_profile_repositoty.dart';

/// ==========================================================
/// PROFILE USE CASE
/// ==========================================================
///
/// Handles the business logic for fetching user profile data
/// and mapping it into the domain entity [UserProfileEntity].
class ProfileUsecase {
  final IProfileRepository repository;

  ProfileUsecase({required this.repository});

  /// Fetches the user's profile.
  ///
  /// Returns a [Result] containing either:
  /// - [UserProfileEntity] on success
  /// - [Failure] on error
  Future<Result<UserProfileEntity, Failure>> getProfile() async {
    final result = await repository.getProfile();

    // Handle failure
    if (result is FailureResult) {
      return FailureResult((result as FailureResult).error);
    }

    // Map data model to domain entity
    final profileResponse = (result as Success).data as ProfileResponse;
    final userEntity = profileResponse.toEntity();

    return Success(userEntity);
  }
}