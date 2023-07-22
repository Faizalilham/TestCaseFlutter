import 'package:ads_challenge/app/routes/app_pages.dart';
import 'package:ads_challenge/app/utils/utils.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import '../controllers/otp_verification_controller.dart';

class OtpVerificationView extends GetView<OtpVerificationController> {
  const OtpVerificationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 60,
      height: 60,
      textStyle: const TextStyle(
          fontSize: 20,
          color: blackColor,
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: const Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: whiteColor,
      ),
    );

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: whiteColor,
      body: Container(
        margin: const EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            
            children: [
              const SizedBox(
                height: 25,
              ),
              const Text(
                "OTP Verification",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: blackColor),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Please check your email to see the verification code",
                style: TextStyle(fontSize: 16, color: semiGreyColor),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "OTP Code",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: blackColor),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Pinput(
                length: 4,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: focusedPinTheme,
                submittedPinTheme: submittedPinTheme,

                showCursor: true,
                onCompleted: (pin) => print(pin),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: ElevatedButton(
                    onPressed: () {
                      
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      foregroundColor: whiteColor,
                      minimumSize: const Size(double.infinity, 50),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'Sign In',
                      style: TextStyle(fontSize: 18),
                    )),
              ),
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment
                        .spaceBetween, // Penempatan teks di pojok kanan dan kiri
                    children: [
                      const Text(
                        'Resend code to',
                        style: TextStyle(
                            fontSize: 16,color: semiGreyColor),
                      ),
                      Obx(() {
                        return Text(
                          '00:${controller.seconds.value.toString().padLeft(2, '0')}',
                          style: const TextStyle(
                              fontSize: 16,color: semiGreyColor),
                        );
                      })
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
