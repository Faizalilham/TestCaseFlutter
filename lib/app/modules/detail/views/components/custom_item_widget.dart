import 'package:ads_challenge/app/utils/utils.dart';
import 'package:flutter/material.dart';

class CustomItemWidget extends StatelessWidget {
  final String assetImage;
 

  const CustomItemWidget({
    required this.assetImage,
   
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: whiteColor, 
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Image.asset(
            assetImage,
            width: 40,
            height: 40,
          ),
        ),
      ),
    );
  }
}
