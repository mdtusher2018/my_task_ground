// features/authentication/domain/notifiers/login_notifier.dart
import '../../../../core/di/dependency_injection.dart';
import 'package:scube_task/src/features/authentication/domain/entites/signin_entity.dart';
import 'package:scube_task/src/features/authentication/domain/usecase/signin_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scube_task/src/core/base/result.dart';

part 'signin_notifier.g.dart';

@riverpod
class LoginNotifier extends _$LoginNotifier {
  late final SigninUseCase _useCase;

  @override
  FutureOr<SigninEntity?> build() {
    _useCase = ref.watch(loginUseCaseProvider);
    return null; // initial state
  }

  Future<void> login({required String email, required String password}) async {
    // Set state → loading
    state = const AsyncLoading();

    // Call use case
    final result = await _useCase.execute(email: email, password: password);

    // Handle Result
    switch (result) {
      case Success(:final data):
        state = AsyncData(data);
        return;

      case FailureResult(:final error):
        state = AsyncError(
          error.message,
          error.stackTrace ?? StackTrace.fromString("No trace found"),
        );

        return;
    }
  }
}
