import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:scube_task/src/presentation/Views/all_products/all_products_page.dart';
import 'package:scube_task/src/presentation/Views/authentication/signin_page.dart';
import 'package:scube_task/src/presentation/Views/root_page.dart';
import 'routes.dart';

/// ==========================================================
/// APP ROUTER PROVIDER
/// ==========================================================
/// 
/// Centralized navigation configuration using GoRouter.

final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    /// First screen shown when app launches
    initialLocation: AppRoutes.root,

    /// Application routes
    routes: [
      /// Root Page
      GoRoute(
        path: AppRoutes.root,
        builder: (context, state) => const RootPage(),
      ),

      /// Signin Page
      GoRoute(
        path: AppRoutes.signin,
        builder: (context, state) =>  SigninPage(),
      ),

      /// All Products Page
      GoRoute(
        path: AppRoutes.allProducts,
        builder: (context, state) => const HomePage(),
      ),
    ],
  );
});