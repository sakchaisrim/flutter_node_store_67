// ignore_for_file: prefer_const_constructors

import 'package:flutter_node_store67/screens/dashboard/dashboard_screen.dart';
import 'package:flutter_node_store67/screens/forgotpassword/forgot_password_screen.dart';
import 'package:flutter_node_store67/screens/login/login_screen.dart';
import 'package:flutter_node_store67/screens/welcome/welcome_screen.dart';
import 'package:flutter_node_store67/screens/register/register_screen.dart';

class AppRouter {

  // Router Map Key
  static const String welcome = 'welcome';
  static const String login = 'login';
  static const String register = 'register';
  static const String forgotPassword = 'forgotPassword';
  static const String dashboard = 'dashboard';

  // Router Map
  static get routes => {
    welcome: (context) => WelcomeScreen(),
    login: (context) => LoginScreen(),
    register: (context) => RegisterScreen(),
    forgotPassword: (context) => ForgotPasswordScreen(),
    dashboard: (context) => DashboardScreen(),
  };

}