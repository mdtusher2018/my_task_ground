// features/authentication/domain/notifiers/login_notifier.dart

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scube_task/src/core/base/result.dart';
import 'package:scube_task/src/core/di/injection.dart';
import 'package:scube_task/src/domain/entites/signin_entity.dart';
import 'package:scube_task/src/domain/usecase/signin_usecase.dart';


/// Provider
final signinProvider =
    AsyncNotifierProvider<LoginNotifier, SigninEntity?>(
  LoginNotifier.new,
);

/// Notifier
class LoginNotifier extends AsyncNotifier<SigninEntity?> {
  late final SigninUseCase _useCase;

  @override
  Future<SigninEntity?> build() async {
    _useCase = ref.watch(signinUseCaseProvider);
    return null; // initial state
  }

  Future<void> login({
    required String email,
    required String password,
  }) async {
    state = const AsyncLoading();

    final result = await _useCase.execute(
      email: email,
      password: password,
    );

    switch (result) {
      case Success(:final data):
        state = AsyncData(data);
        break;

      case FailureResult(:final error):
        state = AsyncError(
          error.message,
          error.stackTrace ?? StackTrace.current,
        );
        break;
    }
  }
}