import 'package:go_router/go_router.dart';
import 'package:scube_task/src/presentation/features/home/home_page.dart';
import 'routes.dart';

class AppRouter {
  late final GoRouter router;

  AppRouter() {
    router = GoRouter(
      initialLocation: AppRoutes.home,
      routes: [
        GoRoute(path: AppRoutes.home, builder: (context, state) => HomePage()),
      ],
    );
  }
}
