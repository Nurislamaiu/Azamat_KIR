import 'package:flutter/material.dart';
import 'package:kirazamat/src/features/authentication/screens/forgotPassword/forgotPassword.dart';

import '../features/authentication/screens/login/login_screen.dart';
import '../features/authentication/screens/signup/signup_screen.dart';

class AppRoutes {
  static const String login = '/login';
  static const String signup = '/signup';
  static const String forget = '/forget';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      login: (context) => LoginScreen(),
      signup: (context) => SignUpScreen(),
      forget: (context) => ForgotScreen(),
    };
  }
}
