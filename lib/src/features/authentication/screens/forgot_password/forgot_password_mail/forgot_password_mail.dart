import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrms/src/common_widgets/form/form_header_widget.dart';
import 'package:hrms/src/constants/image_string.dart';
import 'package:hrms/src/constants/sizes.dart';
import 'package:hrms/src/constants/text_strings.dart';
import 'package:hrms/src/features/authentication/screens/forgot_password/forgot_password_otp/otp_screen.dart';

class ForgotPasswordMailScreen extends StatelessWidget {
  const ForgotPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
      padding: const EdgeInsets.all(hDefaultSize),
      child: Column(
          children: [
            SizedBox(
              height: hDefaultSize * 4 - 10,
            ),
            const FormHeaderWidget(
              image: hForgotPasswordImage,
              title: hForgotPasswordTitle,
              subTitle: hForgotMailSubTitle,
              crossAxisAlignment: CrossAxisAlignment.center,
              heightBetween: hDefaultSize-10,
              imageHeight: 0.4,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10,),
            Form(child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    label: Text("E-Mail"),
                    hintText: "E-Mail",
                    prefixIcon: Icon(Icons.mail_outline_rounded),
                    border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(width:double.infinity,child: ElevatedButton(
                    onPressed: (){
                        Get.to(()=>const OTPScreen());
                }, child: Text("NEXT",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)))
              ],
            ))
          ],
      ),
    ),
        ));
  }
}
