import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scube_task/src/core/base/failure.dart';
import 'package:scube_task/src/core/base/result.dart';
import 'package:scube_task/src/core/di/injection.dart';
import 'package:scube_task/src/domain/entites/user_profile_entity.dart';
import 'package:scube_task/src/domain/usecase/profile_usecase.dart';

/// ------------------------------------------------------------
/// USECASE PROVIDER
/// ------------------------------------------------------------
final profileUsecaseProvider = Provider<ProfileUsecase>((ref) {
  return ProfileUsecase(
    repository: ref.watch(profileRepositoryProvider),
  );
});

/// ------------------------------------------------------------
/// STATE DEFINITIONS 
/// ------------------------------------------------------------
enum ProfileStatus {
  initial,
  loading,
  success,
  error,
  refetching,
}

class ProfileState {
  final ProfileStatus status;
  final UserProfileEntity? profile;
  final String? errorMessage;
  final StackTrace? stackTrace;

  const ProfileState({
    this.status = ProfileStatus.initial,
    this.profile,
    this.errorMessage,
    this.stackTrace,
  });

  ProfileState copyWith({
    ProfileStatus? status,
    UserProfileEntity? profile,
    String? errorMessage,
    StackTrace? stackTrace,
  }) {
    return ProfileState(
      status: status ?? this.status,
      profile: profile ?? this.profile,
      errorMessage: errorMessage,
      stackTrace: stackTrace ?? this.stackTrace,
    );
  }
}

/// ------------------------------------------------------------
/// NOTIFIER
/// ------------------------------------------------------------
class ProfileNotifier extends StateNotifier<ProfileState> {
  final ProfileUsecase usecase;

  ProfileNotifier({required this.usecase})
      : super(const ProfileState()) {
    fetchProfile();
  }

  Future<void> fetchProfile() async {
    state = state.copyWith(status: ProfileStatus.loading);

    final result = await usecase.getProfile();

    if (result is Success<UserProfileEntity, Failure>) {
      state = state.copyWith(
        status: ProfileStatus.success,
        profile: result.data,
        errorMessage: null,
        stackTrace: null,
      );
    } else if (result is FailureResult<UserProfileEntity, Failure>) {
      final error = result.error;
      state = state.copyWith(
        status: ProfileStatus.error,
        errorMessage: error.message,
        stackTrace: error.stackTrace,
      );
    }
  }

  Future<void> refetch() async {
    state = state.copyWith(status: ProfileStatus.refetching);

    final result = await usecase.getProfile();

    if (result is Success<UserProfileEntity, Failure>) {
      state = state.copyWith(
        status: ProfileStatus.success,
        profile: result.data,
        errorMessage: null,
        stackTrace: null,
      );
    } else if (result is FailureResult<UserProfileEntity, Failure>) {
      final error = result.error;
      state = state.copyWith(
        status: ProfileStatus.error,
        errorMessage: error.message,
        stackTrace: error.stackTrace,
      );
    }
  }
}


/// ------------------------------------------------------------
/// STATE NOTIFIER PROVIDER
/// ------------------------------------------------------------
final profileNotifierProvider =
    StateNotifierProvider<ProfileNotifier, ProfileState>((ref) {
  final usecase = ref.watch(profileUsecaseProvider);
  return ProfileNotifier(usecase: usecase);
});