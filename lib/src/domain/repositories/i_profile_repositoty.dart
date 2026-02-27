import 'package:scube_task/src/core/base/failure.dart';
import 'package:scube_task/src/core/base/repository.dart';
import 'package:scube_task/src/core/base/result.dart';
import 'package:scube_task/src/data/models/profile_response.dart';

/// ==========================================================
/// PROFILE REPOSITORY INTERFACE
/// ==========================================================
///
/// Defines the contract for fetching user profile data.
/// Extends [Repository] to use asyncGuard/guard for safe API calls.
abstract base class IProfileRepository extends Repository {
  
  /// Fetches the current user's profile.
  ///
  /// Returns a [Result] containing either:
  /// - [ProfileResponse] on success
  /// - [Failure] on error
  Future<Result<ProfileResponse, Failure>> getProfile();
}