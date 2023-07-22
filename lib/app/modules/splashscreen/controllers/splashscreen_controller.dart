import 'dart:async';
import 'package:ads_challenge/app/modules/login/controllers/login_controller.dart';
import 'package:ads_challenge/app/modules/login/views/login_view.dart';
import 'package:ads_challenge/app/modules/onboarding/controllers/onboarding_controller.dart';
import 'package:ads_challenge/app/modules/onboarding/views/onboarding_view.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashscreenController extends GetxController {
  void timerSplashScreen(int timer) async {
    Timer(Duration(seconds: timer), () => showFirstOnboarding());
  }

  void showFirstOnboarding() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    var onboarding = sharedPreferences.getBool("onboarding");
    if (onboarding != null && onboarding == true) {
       Get.put(LoginController());
      Get.offAll(() => const LoginView(),
          transition: Transition.upToDown,
          duration: const Duration(milliseconds: 400));
    } else {
      Get.put(OnboardingController());
      Get.offAll(() => OnboardingView(),
          transition: Transition.upToDown,
          duration: const Duration(milliseconds: 400));
    }
  }
}
