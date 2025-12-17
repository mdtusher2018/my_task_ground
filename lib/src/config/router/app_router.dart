import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:scube_task/src/features/authentication/presentation/pages/signin_page.dart';
import 'package:scube_task/src/features/dashboard/presentation/page/dashboard_empty_page.dart';
import 'package:scube_task/src/features/dashboard/presentation/page/dashboard_page.dart';
import 'package:scube_task/src/features/dashboard/presentation/page/energy_data_details_page.dart';
import 'routes.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: AppRoutes.signIn,
    routes: [
      GoRoute(
        path: AppRoutes.signIn,
        builder: (context, state) => SigninPage(),
      ),
      GoRoute(
        path: AppRoutes.dashboard,
        builder: (context, state) => DashboardPage(),
      ),
      GoRoute(
        path: AppRoutes.dashboardEmptyView,
        builder: (context, state) => DashboardEmptyPage(),
      ),
      GoRoute(
        path: AppRoutes.energyDataDetailsPage,
        builder: (context, state) => DataViewPage(),
      ),
    ],
  );
});
