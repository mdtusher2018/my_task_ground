part of "../dependency_injection.dart";

// Provide LocalStorageService
@riverpod
ILocalStorageService localStorage(Ref ref) {
  return LocalStorageService();
}

// Provide ApiClient
@riverpod
ApiClient apiClient(Ref ref) {
  final localService = ref.watch(localStorageProvider);
  final navigatorKey = ref.watch(appRouterProvider).routerDelegate.navigatorKey;
  return ApiClient(
    baseUrl: ApiEndpoints.baseUrl,
    localStorage: localService,
    navigatorKey: navigatorKey,
  );
}

// Provide ApiService
@riverpod
IApiService apiService(Ref ref) {
  final client = ref.watch(apiClientProvider);
  return ApiService(client, baseUrl: ApiEndpoints.baseUrl);
}

// Provide SnackbarService
@riverpod
ISnackBarService snackBarService(Ref ref) {
  return SnackBarService();
}
