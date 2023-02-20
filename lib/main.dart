import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hrms/src/features/authentication/screens/splash_screen/splash.dart';
import 'package:hrms/src/features/home_screen/home_screen.dart';
import 'package:hrms/src/utils/theme/theme.dart';


void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'HRMS',
      theme: HApptheme.lightTheme,

      home:   HomeScreen(),
    );
  }
}
