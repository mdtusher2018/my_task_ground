import 'package:scube_task/src/core/base/failure.dart';
import 'package:scube_task/src/core/base/result.dart';
import 'package:scube_task/src/core/services/network/i_api_service.dart';
import 'package:scube_task/src/core/utils/api_end_points.dart';
import 'package:scube_task/src/data/models/profile_response.dart';
import 'package:scube_task/src/domain/repositories/i_profile_repositoty.dart';

final class ProfileRepository extends IProfileRepository {
  final IApiService _apiService;
  ProfileRepository(this._apiService);
  @override
  Future<Result<ProfileResponse, Failure>> getProfile() async {
    return asyncGuard(() async {
      final result = await _apiService.get(ApiEndpoints.profile);
      return ProfileResponse.fromJson(result);
    });
  }
}
