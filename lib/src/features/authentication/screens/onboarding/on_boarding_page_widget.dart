import 'package:flutter/material.dart';

import '../../models/model_on_boarding.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(30.0),
      color: model.bgColor ,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
              image: AssetImage(model.image,), height: size.height * 0.5
          ),
          Column(
            children: [
              Text(model.title,textAlign: TextAlign.center, style: Theme.of(context).textTheme.headlineMedium,),
              Text(model.subTitle,textAlign: TextAlign.center,),
            ],
          ),

          Text(model.counterText),
          SizedBox(height: 60.0,)
        ],
      ),
    );
  }
}