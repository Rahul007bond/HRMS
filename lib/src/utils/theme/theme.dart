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
        primarySwatch: const MaterialColor(0xff6D6CC0,<int,Color>{

          900:Color(0xff6D6CC0),
          800:Color(0xe66d6cc0),
          700:Color(0xcc6d6cc0),
          600:Color(0xb36d6cc0),
          500:Color(0x996d6cc0),
          400:Color(0x806d6cc0),
          300:Color(0x666d6cc0),
          200:Color(0x4d6d6cc0),
          100:Color(0x336d6cc0),
          50:Color(0x1a6d6cc0),

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