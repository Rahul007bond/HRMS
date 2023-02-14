
import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../../constants/image_string.dart';
import '../../../../constants/text_strings.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage(hWelcomeScreenImage),
          height: size.height * 0.45,
        ),
        const Text(
          hLoginTitle,
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        const Text(hLoginSubTitle,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
      ],
    );
  }
}
