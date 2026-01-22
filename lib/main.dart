import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scube_task/src/core/di/injection.dart';
import 'package:scube_task/src/core/router/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupDI();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          title: 'Scube Task App',
          debugShowCheckedModeBanner: false,

          theme: ThemeData(primaryColor: Colors.blue, useMaterial3: true),

          routerConfig: getIt<AppRouter>().router,
        );
      },
    );
  }
}
