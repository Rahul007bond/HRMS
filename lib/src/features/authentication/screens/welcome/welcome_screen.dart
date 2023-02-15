import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hrms/src/constants/colors.dart';
import 'package:hrms/src/constants/image_string.dart';
import 'package:hrms/src/constants/sizes.dart';
import 'package:hrms/src/constants/text_strings.dart';

import '../../../../common_widgets/fade_in_animation/animation_design.dart';
import '../../../../common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import '../../../../common_widgets/fade_in_animation/fade_in_animation_model.dart';
import '../login/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(FadeInAnimationController());
    controller.startAnimation();
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xffff7849),
      body: Stack(
        children: [
          HFadeInAnimation(
            durationInMs: 1200,
            animate: HAnimatePosition(
                bottomAfter: 0,
                bottomBefore: -100,
                leftAfter: 0,
                leftBefore: 0,
                topAfter: 0,
                topBefore: 0,
                rightAfter: 0,
                rightBefore: 0),
            child: Container(
              padding: EdgeInsets.all(hDefaultSize),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                    image: AssetImage(hWelcomeScreenImage),
                    height: height * 0.50,
                  ),
                  Column(
                    children: [
                      Text(
                        hWelcomeTitle,
                        textAlign: TextAlign.center,
                        // style: Theme.of(context).textTheme.displaySmall, ,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold
                        )
                      ,
                      ),
                      const Divider(
                        thickness: 0.5,
                        color: Color(0xffff7849),
                      ),
                      Text(
                        hWelcomeSubTitle,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: OutlinedButton(
                              onPressed: () =>Get.to(()=>const LoginScreen()),
                              child: Text(hLogin.toUpperCase(),style: const TextStyle(fontSize: 20, fontFamily: 'tk'),))),
                      SizedBox(
                        width: 10,
                      ),
                      // Expanded(
                      //     child: ElevatedButton(
                      //        onPressed: (){},
                      //         child: Text("Signup".toUpperCase())))
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
