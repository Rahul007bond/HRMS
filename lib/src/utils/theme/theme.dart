import 'package:flutter/material.dart';
import 'package:hrms/src/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:hrms/src/utils/theme/widget_themes/outlinedbutton_theme.dart';

class HApptheme{
  static ThemeData lightTheme=
    ThemeData(
      // This is the theme of your application.
      //
      // Try running your application with "flutter run". You'll see the
      // application has a blue toolbar. Then, without quitting the app, try
      // changing the primarySwatch below to Colors.green and then invoke
      // "hot reload" (press "r" in the console where you ran "flutter run",
      // or simply save your changes to "hot reload" in a Flutter IDE).
      // Notice that the counter didn't reset back to zero; the application
      // is not restarted.
        brightness: Brightness.light,
        primarySwatch: const MaterialColor(0xffff7849,<int,Color>{
          50: Color(0x1aff7849),
          100:Color(0x33ff7849),
          200:Color(0x4dff7849),
          300:Color(0x66ff7849),
          400:Color(0x80ff7849),
          500:Color(0xb3ff7849),
          600:Color(0xccff7849),
          700:Color(0xe6ff7849),
          800:Color(0xf2ff7849),
          900:Color(0xffff7849),

        }),
        inputDecorationTheme: InputDecorationTheme(

          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black
            )
          )
        ),

        outlinedButtonTheme: HOutlinedButtonTheme.outlinedButtonTheme,
        elevatedButtonTheme: HElevatedButtonTheme.elevatedButtonTheme

    );


}