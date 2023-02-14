
import 'package:flutter/material.dart';

class ForgotPasswordBtnWidget extends StatelessWidget {
  const ForgotPasswordBtnWidget({
    required this.subTitle,
    required this.btnIcon,
    required this.title,
    required this.onTap,
    Key? key,
  }) :super(key: key);
  final IconData btnIcon;
  final String title,subTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.grey.shade200
        ),
        child: Row(
          children: [
            Icon(btnIcon,size: 60,),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Text(title,style: TextStyle(fontSize: 20)),
                Text(subTitle,style: TextStyle(fontSize: 12)),

              ],
            )
          ],
        ),
      ),
    );
  }
}
