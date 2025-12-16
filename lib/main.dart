import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scube_task/src/config/router/app_router.dart';
import 'package:scube_task/src/core/di/dependency_injection.dart';
import 'package:scube_task/src/core/services/snackbar/snackbar_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final snackBarService = ref.read(snackBarServiceProvider);
    final router = ref.watch(appRouterProvider);

    return ScreenUtilInit(
      designSize: const Size(375, 812), // iPhone X / Figma standard
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          scaffoldMessengerKey:
              (snackBarService as SnackBarService).messengerKey,
          title: 'Scube Task App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(primaryColor: Colors.blue, useMaterial3: true),
          routerConfig: router,
        );
      },
    );
  }
}
