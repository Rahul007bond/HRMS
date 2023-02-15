import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

class HElevatedButtonTheme{
  HElevatedButtonTheme._();
  static final elevatedButtonTheme=ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          foregroundColor: Colors.white,
          backgroundColor: Colors.black87,
          //side: BorderSide(color: hSecondaryColor),
          padding: const EdgeInsets.symmetric(vertical: hButtonHeight,)
      )
  );
}