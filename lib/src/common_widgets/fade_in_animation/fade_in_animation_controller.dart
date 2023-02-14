import 'package:get/get.dart';
import 'package:hrms/src/features/authentication/screens/welcome/welcome_screen.dart';

class FadeInAnimationController extends GetxController{
  static FadeInAnimationController get find=>Get.find();
  RxBool animate=false.obs;
  Future startAnimation() async{
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value=true;
  }
}