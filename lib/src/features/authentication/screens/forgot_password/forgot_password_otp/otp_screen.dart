import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrms/src/common_widgets/form/form_header_widget.dart';
import 'package:hrms/src/constants/sizes.dart';
import 'package:hrms/src/constants/text_strings.dart';

import '../../../../../constants/image_string.dart';

class OTPScreen extends StatelessWidget{
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(hDefaultSize),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text(
              //   "HR\nMS",style: GoogleFonts.montserrat(
              //   fontWeight: FontWeight.bold,
              //   fontSize: 80,
              //
              // ),),
              // Image(image: AssetImage(hOtpVerifyImage)),
              // const SizedBox(height: 40,),
              //
              // Text(hOtpSubTitle.toUpperCase(),style: const TextStyle(fontFamily: 'tk',fontWeight: FontWeight.bold,fontSize: 20),),
              //
              // const SizedBox(height: 60,),
              // const Text("$hOtpMessage raj@gmail.com",textAlign: TextAlign.center,),
              FormHeaderWidget(textAlign: TextAlign.center,image: hOtpVerifyImage, title: hOtpSubTitle, subTitle: "$hOtpMessage raj@gmail.com",imageHeight: 0.55,crossAxisAlignment: CrossAxisAlignment.center,heightBetween: 10,),
              SizedBox(height: 20,),
              OtpTextField(
                numberOfFields: 6,
                fillColor: Colors.black.withOpacity(0.1),
                filled: true,
                onSubmit: (code){print("otp is => $code");},
              ),
              SizedBox(height: 40,),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){}, child: Text("NEXT",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),)))

            ],
          ),
        ),
      ),
    );
  }

}