import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kirazamat/src/features/authentication/screens/forgotPassword/forgotPassword.dart';
import 'package:kirazamat/src/features/authentication/screens/login/login_screen.dart';
import 'package:kirazamat/src/features/authentication/screens/menu/menu_screen.dart';
import 'package:kirazamat/src/routing/routes.dart';
import 'package:kirazamat/src/utils/theme/theme.dart';

void main()=> runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      routes: AppRoutes.getRoutes(),
      home: AppHome(),
    );
  }
}

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
