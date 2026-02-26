import 'package:scube_task/src/core/base/failure.dart';
import 'package:scube_task/src/core/base/result.dart';
import 'package:scube_task/src/data/models/profile_response.dart';
import 'package:scube_task/src/domain/entites/user_profile_entity.dart';
import 'package:scube_task/src/domain/repositories/i_profile_repositoty.dart';

class ProfileUsecase {
  final IProfileRepository repository;
  ProfileUsecase({required this.repository});
  Future<Result<UserProfileEntity, Failure>> profileUseCase() async {
    final result = await repository.getProfile();

    if (result is FailureResult) {
      final error = (result as FailureResult).error as Failure;
      return FailureResult(error);
    }

    final userModel = (result as Success).data as ProfileResponse;
    final UserProfileEntity userEntity =userModel.toEntity();
    return Success(userEntity);
  }
}
