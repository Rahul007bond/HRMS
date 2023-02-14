import 'package:flutter/material.dart';
import 'package:hrms/src/constants/image_string.dart';

import '../../../../common_widgets/form/form_header_widget.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import 'login_form_widget.dart';
import 'login_header_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(hDefaultSize-5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [

               FormHeaderWidget(
                 image:hWelcomeScreenImage,
                 title: hLoginTitle,
                 subTitle: hLoginSubTitle,

               ),


              LoginForm()
            ],
          ),
        ),
      )),
    );
  }
}
