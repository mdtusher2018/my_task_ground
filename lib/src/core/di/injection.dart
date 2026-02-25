

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
import 'package:scube_task/src/data/repositories/product_repository.dart';
import 'package:scube_task/src/domain/usecase/product_usecase.dart';



/// LocalStorageService Provider
final localStorageProvider = Provider<ILocalStorageService>((ref) {
  return LocalStorageService();
});

/// ApiClient Provider
final apiClientProvider = Provider<ApiClient>((ref) {
  final localService = ref.watch(localStorageProvider);
  final navigatorKey =
      ref.watch(appRouterProvider).routerDelegate.navigatorKey;

  return ApiClient(
    baseUrl: ApiEndpoints.baseUrl,
    localStorage: localService,
    navigatorKey: navigatorKey,
  );
});

/// ApiService Provider
final apiServiceProvider = Provider<IApiService>((ref) {
  final client = ref.watch(apiClientProvider);

  return ApiService(
    client,
    baseUrl: ApiEndpoints.baseUrl,
  );
});

/// SnackBarService Provider
final snackBarServiceProvider = Provider<ISnackBarService>((ref) {
  return SnackBarService();
});




final productRepositoryProvider = Provider<ProductRepository>((ref) {
  final apiService = ref.read(apiServiceProvider);
  return ProductRepository(apiService);
});


final productUseCaseProvider = Provider<ProductUseCase>((ref) {
  final repository = ref.read(productRepositoryProvider);
  return ProductUseCase(repository: repository);
});