import 'package:ads_challenge/app/utils/utils.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splashscreen_controller.dart';

class SplashscreenView extends GetView<SplashscreenController> {
  const SplashscreenView({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    controller.timerSplashScreen(2);
    return Scaffold(
        backgroundColor: primaryColor,
        body: Center(
          child: Image.asset("assets/splash/splash.png",height: 150,width:150),
        ));
  }
}
