import 'package:ads_challenge/app/modules/components/circular_icon_widget.dart';
import 'package:ads_challenge/app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AppbarCustom extends StatelessWidget {
  String tittle;
  String routeBack;

  AppbarCustom({required this.tittle, required this.routeBack});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            Get.offAllNamed(routeBack);
          },
          child: Align(
            alignment: Alignment.centerLeft,
            child: CircularIconWidget(
              iconData: Icons.arrow_back_ios_new_sharp,
              iconSize: 25,
              iconColor: blackColor,
              size: 60,
              backgroundColor: whiteColor,
            ),
          ),
        ),
        const SizedBox(width: 100),
        Text(tittle,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: blackColor)),
      ],
    );
  }
}
