import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'fade_in_animation_controller.dart';
import 'fade_in_animation_model.dart';

class HFadeInAnimation extends StatelessWidget{
   HFadeInAnimation({
    Key? key,
    required this.durationInMs,
     this.animate,
     required this.child

}):super(key: key);
  final controller=Get.put(FadeInAnimationController());

  final int durationInMs;
  final HAnimatePosition? animate;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Obx(
        ()=>AnimatedPositioned(child: AnimatedOpacity(
          duration: Duration(milliseconds: durationInMs),
          opacity: controller.animate.value?1:0,
          child:child,
        ), duration: Duration(milliseconds: durationInMs),
        top: controller.animate.value ? animate!.topAfter :animate!.topBefore,
        left: controller.animate.value? animate!.leftAfter: animate!.leftBefore,
          bottom: controller.animate.value? animate!.bottomAfter: animate!.bottomBefore,
          right: controller.animate.value? animate!.rightAfter: animate!.rightBefore,
        )
    );
  }

}