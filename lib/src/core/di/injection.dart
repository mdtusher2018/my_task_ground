import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scube_task/src/core/router/app_router.dart';
import 'package:scube_task/src/core/services/network/api_client.dart';
import 'package:scube_task/src/core/services/network/api_service.dart';
import 'package:scube_task/src/core/services/network/i_api_service.dart';
import 'package:scube_task/src/core/services/snackbar/i_snackbar_service.dart';
import 'package:scube_task/src/core/services/snackbar/snackbar_service.dart';
import 'package:scube_task/src/core/services/storage/i_local_storage_service.dart';
import 'package:scube_task/src/core/services/storage/local_storage_service.dart';
import 'package:scube_task/src/core/utils/api_end_points.dart';
import 'package:scube_task/src/data/repositories/auth_repository.dart';
import 'package:scube_task/src/data/repositories/product_repository.dart';
import 'package:scube_task/src/data/repositories/profile_repository.dart';
import 'package:scube_task/src/domain/repositories/i_auth_repository.dart';
import 'package:scube_task/src/domain/repositories/i_product_repository.dart';
import 'package:scube_task/src/domain/repositories/i_profile_repositoty.dart';
import 'package:scube_task/src/domain/usecase/product_usecase.dart';
import 'package:scube_task/src/domain/usecase/profile_usecase.dart';
import 'package:scube_task/src/domain/usecase/signin_usecase.dart';

/// ==========================================================
/// CORE SERVICES
/// ==========================================================

/// Provides access to local persistent storage.
final localStorageProvider = Provider<ILocalStorageService>((ref) {
  return LocalStorageService();
});

/// Configures and provides the API client.
final apiClientProvider = Provider<ApiClient>((ref) {
  final localStorage = ref.watch(localStorageProvider);
  final navigatorKey =
      ref.watch(appRouterProvider).routerDelegate.navigatorKey;

  return ApiClient(
    baseUrl: ApiEndpoints.baseUrl,
    localStorage: localStorage,
    navigatorKey: navigatorKey,
  );
});

/// Provides API abstraction layer over Dio.
final apiServiceProvider = Provider<IApiService>((ref) {
  final client = ref.watch(apiClientProvider);
  return ApiService(client, baseUrl: ApiEndpoints.baseUrl);
});

/// Global snackbar service for UI feedback.
final snackBarServiceProvider = Provider<ISnackBarService>((ref) {
  return SnackBarService();
});


/// ==========================================================
/// REPOSITORIES (Data Layer)
/// ==========================================================

/// Product repository implementation.
final productRepositoryProvider = Provider<IProductRepository>((ref) {
  final apiService = ref.read(apiServiceProvider);
  return ProductRepository(apiService);
});

/// Profile repository implementation.
final profileRepositoryProvider = Provider<IProfileRepository>((ref) {
  final apiService = ref.read(apiServiceProvider);
  return ProfileRepository(apiService);
});

/// Authentication repository implementation.
final authRepositoryProvider = Provider<IAuthRepository>((ref) {
  final apiService = ref.read(apiServiceProvider);
  return AuthRepository(apiService);
});


/// ==========================================================
/// USE CASES (Domain Layer)
/// ==========================================================

/// Product use case provider.
final productUseCaseProvider = Provider<ProductUseCase>((ref) {
  final repository = ref.read(productRepositoryProvider);
  return ProductUseCase(repository: repository);
});

/// Profile use case provider.
final profileUseCaseProvider = Provider<ProfileUsecase>((ref) {
  final repository = ref.read(profileRepositoryProvider);
  return ProfileUsecase(repository: repository);
});

/// Sign-in use case provider.
final signinUseCaseProvider = Provider<SigninUseCase>((ref) {
  final repository = ref.read(authRepositoryProvider);
  final storage = ref.read(localStorageProvider);

  return SigninUseCase(
    authRepository: repository,
    localStorage: storage,
  );
});