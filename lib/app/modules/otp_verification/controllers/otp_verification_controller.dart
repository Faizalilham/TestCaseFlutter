import 'dart:async';

import 'package:get/get.dart';

class OtpVerificationController extends GetxController {
  var seconds = 30.obs;
  Timer? timer;

  @override
  void onInit() {
    startCountdown();
    super.onInit();
  }

  void startCountdown() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (seconds.value == 0) {
        timer.cancel();
      } else {
        seconds.value--;
      }
    });
  }

  @override
  void onClose() {
    timer?.cancel();
    super.onClose();
  }
}
