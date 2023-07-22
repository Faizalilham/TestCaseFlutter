import 'package:ads_challenge/app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BasicCardItem extends StatelessWidget {
  String prefixImage;
  String suffixImage;
  String tittle;
  String subTittle;
  BasicCardItem({ 
    Key? key ,
    required this.prefixImage,
    required this.suffixImage,
    required this.tittle,
    required this.subTittle
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
       
        children: [
         Expanded(
           flex: 1,
           child: Container(
            width:50,
            height: 50,
            decoration: BoxDecoration(
              color: semiWhiteColor,
              borderRadius: BorderRadius.circular(20), // Sudut rounded corners
            ),
            child: Center(
              child: prefixImage.contains("png") ? Image.asset(
                prefixImage, 
                width: 24, 
                height: 24, 
              ) : SvgPicture.asset(
                          prefixImage,
                          height: 24,
                          width: 24,
                        ),
            )),
         ),
          const SizedBox(width: 20),
          Expanded(
            flex: 4,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(tittle,
                      style: const TextStyle(fontSize: 14,fontWeight: FontWeight.bold, color: blackColor)),
                ),

                const SizedBox(height: 5,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(subTittle,
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: semiGreyColor)),
                ),
              ],
            ),
          ),
          const SizedBox(width: 20),
          Expanded(flex:1,child: Image.asset(suffixImage,height: 20,width:20)),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}