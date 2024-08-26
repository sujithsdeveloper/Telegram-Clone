import 'dart:async';

import 'package:flutter/material.dart';
import 'package:telegram_clone/utils/image_constants.dart';
import 'package:telegram_clone/view/tabs/home_screen.dart';
import 'package:telegram_clone/view/tabs/tab_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => TabControllerSample(),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image(image: AssetImage(ImageConstants.LOGO)),
      ),
    );
  }
}
