// ignore_for_file: prefer_const_constructors

import 'package:flutter_node_store67/screens/login/login_screen.dart';
import 'package:flutter_node_store67/screens/welcome/welcome_screen.dart';

class AppRouter {

  // Router Map Key
  static const String welcome = 'welcome';
  static const String login = 'login';

  // Router Map
  static get routes => {
    welcome: (context) => WelcomeScreen(),
    login: (context) => LoginScreen(),
  };

}