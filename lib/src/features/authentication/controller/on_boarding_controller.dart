
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

import '../../../constants/image_string.dart';
import '../../../constants/text_strings.dart';
import '../../../constants/colors.dart';
import '../models/model_on_boarding.dart';
import '../screens/onboarding/on_boarding_page_widget.dart';

class OnBoardingController extends GetxController{
  final controller = LiquidController();

  RxInt currentPage=0.obs;
  final pages=[
    OnBoardingPage(model:OnBoardingModel(image: hOnBoardingimg1, title: hOnBoardingText1, subTitle: hOnBoardingSubText1, counterText: hOnBoardingCounter1, bgColor: hOnBoarding1)),
    OnBoardingPage(model:OnBoardingModel(image: hOnBoardingimg2, title: hOnBoardingText2, subTitle: hOnBoardingSubText2, counterText: hOnBoardingCounter2, bgColor: hOnBoarding2)),
    OnBoardingPage(model:OnBoardingModel(image: hOnBoardingimg3, title: hOnBoardingText3, subTitle: hOnBoardingSubText3, counterText: hOnBoardingCounter3, bgColor: hOnBoarding3)),

  ];
  skip()=>controller.jumpToPage(page: 2);
  animateTonextSlide(){
    int nextPage=controller.currentPage+1;
    controller.animateToPage(page: nextPage);
  }
  onPageChangedCallback(int activePageIndex)=>currentPage.value=activePageIndex;



}