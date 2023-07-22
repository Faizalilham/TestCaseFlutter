import 'package:ads_challenge/app/routes/app_pages.dart';
import 'package:ads_challenge/app/utils/utils.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewRichText extends StatelessWidget {
  String firstText;
  String secondText;
  int page;
  NewRichText(
      {Key? key,
      required this.firstText,
      required this.secondText,
      required this.page})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: <TextSpan>[
          TextSpan(
            text: firstText,
            style: const TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 18,
                color: semiGreyColor),
          ),
          const TextSpan(text: ' '),
          TextSpan(
            text: secondText,
            style: const TextStyle(
                fontWeight: FontWeight.normal, fontSize: 18, color: blackColor),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                if (page == 0) {
                  Get.offAllNamed(Routes.LOGIN);
                } else {
                  Get.toNamed(Routes.REGISTER);
                }
              },
          ),
        ],
      ),
    );
  }
}
