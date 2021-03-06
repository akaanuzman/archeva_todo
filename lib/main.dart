import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/extension/app_extensions.dart';

import 'core/init/navigation/navigation_route.dart';
import 'core/init/navigation/navigation_service.dart';
import 'features/common/splash/view/splash_view.dart';

void main() => runApp(
      DevicePreview(
        enabled: true,
        builder: (context) => const MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  static const String path = '/';
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ScreenUtilInit(
        builder: () => MaterialApp(
          navigatorKey: NavigationService.navigatorKey,
          title: 'Archeva Todo App',
          debugShowCheckedModeBanner: false,
          onGenerateRoute: NavigationRoute.generateRoute,
          theme: _theme(context),
          home: const SplashView(),
        ),
      );

  ThemeData _theme(BuildContext context) => ThemeData(
        primaryColor: context.primaryColor,
        scaffoldBackgroundColor: context.background,
        fontFamily: "Avenir",
        colorScheme: ColorScheme.light(
          primary: context.primaryColor,
          secondary: context.secondaryColor,
        ),
      );
}
