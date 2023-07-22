import 'package:ads_challenge/app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Category extends StatelessWidget {
  String tittle;
  Color color ;

  Category({Key? key, required this.tittle,  required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        width: 100,
        height: 50,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: Text(tittle,
              style: const TextStyle(color: blackColor, fontSize: 18)),
        ));
  }
}
