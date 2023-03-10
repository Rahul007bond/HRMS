import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

class HOutlinedButtonTheme{
  HOutlinedButtonTheme._();
  static final outlinedButtonTheme=OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          foregroundColor: const Color(0xff6d6cc0),
          backgroundColor: Colors.white,
         padding: EdgeInsets.symmetric(vertical: hButtonHeight,)
      )
  );
}