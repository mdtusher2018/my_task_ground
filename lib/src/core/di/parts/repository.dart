part of "../dependency_injection.dart";

@riverpod
IAuthRepository authRepository(Ref ref) {
  final api = ref.watch(apiServiceProvider);
  final localStorageService = ref.watch(localStorageProvider);
  return AuthRepository(api, localStorageService);
}


