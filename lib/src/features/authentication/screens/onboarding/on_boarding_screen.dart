import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:hrms/src/constants/colors.dart';
import 'package:hrms/src/constants/image_string.dart';
import 'package:hrms/src/constants/text_strings.dart';
import 'package:hrms/src/features/authentication/models/model_on_boarding.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../controller/on_boarding_controller.dart';
import 'on_boarding_page_widget.dart';

class OnBoardingScreen extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    final onController = OnBoardingController();



    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: onController.pages,
            liquidController: onController.controller,
            onPageChangeCallback: onController.onPageChangedCallback,
            slideIconWidget: Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
          ),
          Positioned(bottom: 60.0, child: OutlinedButton(
            onPressed: (){
              onController.animateTonextSlide();
            },
            style: ElevatedButton.styleFrom(
              side: const BorderSide(color: Colors.black26),
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(20.0),
              foregroundColor: Colors.white
            )
            , child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.black,shape: BoxShape.circle
            ),
            child: Icon(Icons.arrow_forward_ios),
          ),
          )),
          Positioned( top:50,right: 20, child: TextButton(
            onPressed: ()=> onController.skip(),
            child: const Text("Skip", style: TextStyle(color: Colors.grey),),
          )),

          Obx(
            ()=>  Positioned(bottom: 10, child: AnimatedSmoothIndicator( activeIndex: onController.currentPage.value,
            count:3,effect: const WormEffect(
              activeDotColor: Color(0xff272727),
                dotHeight: 5.0
              ),)),
          )
        ],
      ),
    );
  }


}


