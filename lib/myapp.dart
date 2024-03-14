import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mahfazty/core/routing/routes.dart';
import 'package:mahfazty/core/routing/routing.dart';
import 'package:mahfazty/features/login/ui/screens/login_screen.dart';

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  Routing routing;
  MyApp({super.key, required this.routing});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Mahfazty',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          initialRoute: Routes.login,
          home: child,
          onGenerateRoute: routing.generatearoute,
        );
      },
      child: const LoginScreen(),
    );
  }
}
