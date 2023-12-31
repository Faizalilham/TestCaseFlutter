import 'dart:async';

import 'package:ads_challenge/app/modules/components/dialog.dart';
import 'package:ads_challenge/app/modules/otp_verification/controllers/otp_verification_controller.dart';
import 'package:ads_challenge/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordController extends GetxController {
  final formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();

  void showCustomDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CustomDialog(
          image: "assets/auth/email.png",
          tittle: "Check your email",
          subTittle: "We have send password recovery code in your email",
          showButton: false,
          onPressed: () {},
        );
      },
    );
    Timer(const Duration(milliseconds: 2000), () {
      Get.put(OtpVerificationController());
      Get.toNamed(Routes.OTP_VERIFICATION);
    });
  }
}
