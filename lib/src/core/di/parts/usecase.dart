part of "../dependency_injection.dart";

@riverpod
SigninUseCase loginUseCase(Ref ref) {
  return SigninUseCase(
    authRepository: ref.watch(authRepositoryProvider),
    localStorage: ref.watch(localStorageProvider),
  );
}
