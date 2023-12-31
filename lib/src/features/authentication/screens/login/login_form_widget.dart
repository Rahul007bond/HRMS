import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hrms/src/features/home_screen/home_screen.dart';

import '../forgot_password/forgot_password_options/forgot_password_model_bottom_sheet.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              filled: true,
              prefixIcon: Icon(Icons.person_outline_outlined),
              labelText: "Email",
              hintText: "Email",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(
                filled: true,
                prefixIcon: const Icon(Icons.password),
                labelText: "Password",
                hintText: "Password",
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.remove_red_eye_sharp))),
          ),
          const SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
                onPressed: () {
                  ForgotPasswordScreen.buildShowModalBottomSheet(context);
                },
                child: const Text(
                  "Forgot Password?",
                  style: TextStyle(color: Colors.black45),
                )),
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(()=>HomeScreen() );
                    },
                    child: const Text(
                      "LOGIN",
                      style: TextStyle(fontFamily: 'tk', fontSize: 20),
                    )),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
