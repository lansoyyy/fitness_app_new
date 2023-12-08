import 'package:flutter/material.dart';
import 'package:lance_s_application10/presentation/register_screen/register_screen.dart';
import 'package:lance_s_application10/presentation/start_up_screen/start_up_screen.dart';
import 'package:lance_s_application10/presentation/homescreen_container_screen/homescreen_container_screen.dart';
import 'package:lance_s_application10/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String registerScreen = '/register_screen';

  static const String startUpScreen = '/start_up_screen';

  static const String homescreenPage = '/homescreen_page';

  static const String homescreenContainerScreen =
      '/homescreen_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    registerScreen: (context) => RegisterScreen(),
    startUpScreen: (context) => StartUpScreen(),
    homescreenContainerScreen: (context) => HomescreenContainerScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
