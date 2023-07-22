import 'package:ads_challenge/app/routes/app_pages.dart';
import 'package:ads_challenge/app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDialog extends StatelessWidget {
  String image;
  String tittle;
  String subTittle = "";
  bool showButton;
  final VoidCallback onPressed;

  CustomDialog(
      {required this.image,
      required this.tittle,
      required this.subTittle,
      required this.showButton,
      required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: whiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            image,
            width: 120,
            height: 120,
          ),
          const SizedBox(height: 10),
          Text(tittle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: blackColor)),
          const SizedBox(height: 10),
          Text(subTittle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold, color: greyColor)),

          const SizedBox(height: 20,),

          Visibility(
            visible: showButton,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                foregroundColor: whiteColor,
                minimumSize: const Size(double.infinity, 50),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                Get.toNamed(Routes.DASHBOARD);
              },
              child: const Text('Back to Shopping'),
            ),
          ),        
        ],
      ),
      
    );
  }
}
