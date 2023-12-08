import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lance_s_application10/theme/theme_helper.dart';
import 'package:lance_s_application10/routes/app_routes.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'Fitness App',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.registerScreen,
      routes: AppRoutes.routes,
    );
  }
}
