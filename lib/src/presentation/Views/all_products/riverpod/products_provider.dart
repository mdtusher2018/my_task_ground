import 'package:scube_task/src/core/base/failure.dart';
import 'package:scube_task/src/core/base/result.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scube_task/src/core/di/injection.dart';
import 'package:scube_task/src/core/utils/logger.dart';
import 'package:scube_task/src/domain/entites/product_entity.dart';
import 'package:scube_task/src/domain/usecase/product_usecase.dart';

class AllProductsState {
  final List<ProductEntity> products;
  final bool isLoading;
  final String? error;
  final bool hasReachedMax;

  const AllProductsState({
    this.products = const [],
    this.isLoading = false,
    this.error,
    this.hasReachedMax = false,
  });

  AllProductsState copyWith({
    List<ProductEntity>? products,
    bool? isLoading,
    String? error,
    bool? hasReachedMax,
  }) {
    return AllProductsState(
      products: products ?? this.products,
      isLoading: isLoading ?? this.isLoading,
      error: error,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }
}

final allProductsProvider =
    StateNotifierProvider<AllProductsNotifier, AllProductsState>(
      (ref) => AllProductsNotifier(ref.read(productUseCaseProvider)),
    );

class AllProductsNotifier extends StateNotifier<AllProductsState> {
  final ProductUseCase usecase;

  AllProductsNotifier(this.usecase) : super(const AllProductsState()) {
    fetchProducts();
  }

  bool _isFetching = false;
  int _page = 1;

  Future<void> fetchProducts() async {
    if (_isFetching || state.hasReachedMax) return;

    _isFetching = true;

    state = state.copyWith(isLoading: true, error: null);

    final result = await usecase.getAllProducts(page: _page);

    if (result is FailureResult) {
      final error = (result as FailureResult).error as Failure;

      state = state.copyWith(isLoading: false, error: error.message.toString());

      _isFetching = false;
      return;
    }

    final newProducts = (result as Success).data as List<ProductEntity>;

    state = state.copyWith(
      products: [...state.products, ...newProducts],
      isLoading: false,
      hasReachedMax: newProducts.isEmpty,
    );

    if (newProducts.isNotEmpty) {
      _page++;
    }

    _isFetching = false;
  }

  /// 🔥 Pull-to-refresh implementation
  Future<void> refreshProducts({required int currentTab}) async {
    if (_isFetching) return;

    _isFetching = true;

    // Reset pagination
    _page = 1;

    state = state.copyWith(
      isLoading: true,
      error: null,
      hasReachedMax: false,
      products: [],
    );
    Result<List<ProductEntity>, Failure> result;
    if (currentTab == 0) {
      AppLogger.log("Tab 1 fetched");
      result = await usecase.getAllProducts(page: _page);
    } else if (currentTab == 1) {
      AppLogger.log("Tab 2 fetched");
      result = await usecase.getAllProducts(page: _page);
    } else {
      AppLogger.log("Tab 3 fetched");
      result = await usecase.getAllProducts(page: _page);
    }
    if (result is FailureResult) {
      final error = (result as FailureResult).error as Failure;

      state = state.copyWith(isLoading: false, error: error.message.toString());

      _isFetching = false;
      return;
    }

    final products = (result as Success).data as List<ProductEntity>;

    state = state.copyWith(
      products: products,
      isLoading: false,
      hasReachedMax: products.isEmpty,
    );

    if (products.isNotEmpty) {
      _page++;
    }

    _isFetching = false;
  }
}
