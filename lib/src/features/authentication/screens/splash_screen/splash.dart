import 'dart:async';
import 'package:hrms/src/features/authentication/screens/onboarding/on_boarding_screen.dart';

import '../welcome/welcome_screen.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(const Duration(milliseconds: 1500),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> OnBoardingScreen() ));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          // child: const Text('HRMS',style: TextStyle(
          //   fontSize: 25,
          //   color: Color(0xffff7849),
          //   fontWeight: FontWeight.bold,
          //
          // ),),
           child: Image.asset('assets/images/splash/splashscreen.png', height: 80, width: 80,  ),
        ),
      ),
    );
  }
}