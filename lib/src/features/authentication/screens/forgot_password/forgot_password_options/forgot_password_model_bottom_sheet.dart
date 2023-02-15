import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hrms/src/features/authentication/screens/forgot_password/forgot_password_mail/forgot_password_mail.dart';

import '../../../../../constants/text_strings.dart';
import 'forget_password_btn_widget.dart';

class ForgotPasswordScreen{
 static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      builder: (context)=>Container(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(hForgotPasswordTitle, style: TextStyle(fontSize: 20),),
            Text(hForgotPasswordSubTitle,style: TextStyle(fontSize: 15)),
            SizedBox(height: 30.0,),
            ForgotPasswordBtnWidget(
              btnIcon: Icons.mail_outline_rounded,
              title: "E-Mail",
              subTitle: hResetViaEmail,
              onTap: (){
                Navigator.pop(context);
                Get.to(()=>const ForgotPasswordMailScreen());
              },
            ),
            const SizedBox(height: 30.0,),
            ForgotPasswordBtnWidget(
              btnIcon: Icons.mobile_friendly_rounded,
              title: "Phone",
              subTitle: hResetViaPhone,
              onTap: (){},
            ),

          ],
        ),
      ),);
  }

}