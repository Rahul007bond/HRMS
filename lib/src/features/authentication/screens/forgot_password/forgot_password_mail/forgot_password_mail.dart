import 'package:flutter/material.dart';
import 'package:hrms/src/constants/sizes.dart';

class ForgotPasswordMailScreen extends StatelessWidget{
  const ForgotPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: const EdgeInsets.all(hDefaultSize),
          child: Column(
            children: [
              SizedBox(
                height: hDefaultSize*4,
              ),

            ],
          ),
        )
    );
  }

}