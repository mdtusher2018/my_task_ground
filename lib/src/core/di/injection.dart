import 'package:get_it/get_it.dart';
import 'package:scube_task/src/core/router/app_router.dart';
import 'package:scube_task/src/core/services/network/api_client.dart';
import 'package:scube_task/src/core/services/network/api_service.dart';
import 'package:scube_task/src/core/services/network/i_api_service.dart';
import 'package:scube_task/src/core/services/snackbar/i_snackbar_service.dart';
import 'package:scube_task/src/core/services/snackbar/snackbar_service.dart';
import 'package:scube_task/src/core/services/storage/i_local_storage_service.dart';
import 'package:scube_task/src/core/services/storage/local_storage_service.dart';
import 'package:scube_task/src/core/utils/api_end_points.dart';
import 'package:scube_task/src/data/repositories/home_repository.dart';
import 'package:scube_task/src/data/repositories/product_repository.dart';
import 'package:scube_task/src/domain/repositories/i_home_repository.dart';
import 'package:scube_task/src/domain/repositories/i_product_repository.dart';
import 'package:scube_task/src/domain/usecase/home_usecase.dart';
import 'package:scube_task/src/domain/usecase/product_usecase.dart';
import 'package:scube_task/src/presentation/features/home/bloc/home_bloc.dart';
import 'package:scube_task/src/presentation/features/product_by_category/bloc/product_by_category_bloc.dart';
import 'package:scube_task/src/presentation/features/product_details/bloc/product_details_bloc.dart';

final getIt = GetIt.instance;

Future<void> setupDI() async {
  getIt.registerLazySingleton<ILocalStorageService>(
    () => LocalStorageService(),
  );

  getIt.registerLazySingleton<AppRouter>(() => AppRouter());

  getIt.registerLazySingleton<ApiClient>(
    () => ApiClient(
      baseUrl: ApiEndpoints.baseUrl,
      localStorage: getIt<ILocalStorageService>(),
      navigatorKey: getIt<AppRouter>().router.routerDelegate.navigatorKey,
    ),
  );

  getIt.registerLazySingleton<IApiService>(
    () => ApiService(getIt<ApiClient>(), baseUrl: ApiEndpoints.baseUrl),
  );

  getIt.registerLazySingleton<ISnackBarService>(() => SnackBarService());

  // Home
  getIt.registerLazySingleton<IHomeRepository>(
    () => HomeRepository(getIt<IApiService>(), getIt<ILocalStorageService>()),
  );

  getIt.registerLazySingleton<HomeUseCase>(
    () => HomeUseCase(repository: getIt<IHomeRepository>()),
  );

  getIt.registerFactory<HomeBloc>(() => HomeBloc(getIt<HomeUseCase>()));

  //Product Details
  getIt.registerLazySingleton<IProductRepository>(
    () => ProductRepository(getIt<IApiService>()),
  );

  getIt.registerLazySingleton<ProductUseCase>(
    () => ProductUseCase(repository: getIt<IProductRepository>()),
  );

  getIt.registerFactory<ProductDetailsBloc>(
    () => ProductDetailsBloc(useCase: getIt<ProductUseCase>()),
  );

  getIt.registerFactory<ProductByCategoryBloc>(
    () => ProductByCategoryBloc(getIt<ProductUseCase>()),
  );
}
