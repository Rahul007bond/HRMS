import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    Key? key,
    this.imageColor,
    this.heightBetween,
    required this.image,
    required this.title,
    required this.subTitle,
    this.imageHeight=0.2,
    this.crossAxisAlignment=CrossAxisAlignment.start,
    this.textAlign,
  }) : super(key: key);
  final TextAlign? textAlign;
  final Color? imageColor;
  final double? imageHeight;
  final double? heightBetween;
  final CrossAxisAlignment crossAxisAlignment;
  final String image, title, subTitle;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Image(
          image: AssetImage(image),color: imageColor,height:size.height * imageHeight!,

        ),
        SizedBox(height: heightBetween,),
        Text(
          title,
          style: const TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color:Colors.black87),
        ),
        Text(
          subTitle,textAlign: textAlign,
          style: const TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold,color: Colors.black54 ),
        )
      ],
    );
  }
}
