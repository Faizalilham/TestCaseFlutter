import 'package:ads_challenge/app/utils/utils.dart';
import 'package:flutter/material.dart';

class TittleAuth extends StatelessWidget {
  String tittle;
  String subTittle;
  TittleAuth({Key? key,required this.tittle,required this.subTittle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(tittle,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: blackColor)),
        const SizedBox(height: 10),
        Text(subTittle,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16, color: semiGreyColor)),
        const SizedBox(height: 40),
      ],
    );
  }
}
