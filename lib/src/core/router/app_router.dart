import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:scube_task/src/presentation/Views/all_products/all_products_page.dart';
import 'package:scube_task/src/presentation/Views/root_page.dart';
import 'routes.dart';

final appRouterProvider = Provider<GoRouter>((ref) {

  return GoRouter(
      initialLocation: AppRoutes.root,
      routes: [
        GoRoute(path: AppRoutes.root, builder: (context, state) => RootPage()),
        GoRoute(
          path: AppRoutes.allProducts,
      builder: (context, state) => HomePage(),
        ),
      
      ],
    );
});