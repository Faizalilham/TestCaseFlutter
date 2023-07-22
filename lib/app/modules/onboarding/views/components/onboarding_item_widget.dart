import 'package:ads_challenge/core/domain/entities/onboarding_page_item.dart';
import 'package:flutter/material.dart';

class OnboardingItemWidget extends StatelessWidget {
  final OnboardingPageItem item;

  OnboardingItemWidget({required this.item});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        
        Visibility(
            visible: item.headline != "" ? true : false,
            child: Padding(
              padding: const EdgeInsets.only(top:80, left: 30),
              child: Image.asset("assets/onboarding/group_first_onboarding.png"),
            )),
        Visibility(
            visible: item.headline != "" ? false : true,
            child: Padding(
              padding: const EdgeInsets.only(top: 80,right: 15),
              child:
                  Image.asset("assets/onboarding/group_second_onboarding.png"),
        )),    
        Padding(
          padding: const EdgeInsets.only(top:350),
          child: Center(child: Image.asset("assets/onboarding/vector_onboarding.png")),
        ),    
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            Visibility(
              visible: item.headline != "" ? true : false,
              child: Text(item.headline,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold)),
            ),
            item.headline != "" ? const SizedBox(height: 100) : const SizedBox(height: 10),
            Image.asset(
              item.imagePath,
              height: 400,
              width: 400,
            ),
            Visibility(
              visible: item.headline != "" ? false : true,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child: Text(item.title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 34, fontWeight: FontWeight.bold)),
              ),
            ),
            const SizedBox(height: 10),
            Visibility(
              visible: item.headline != "" ? false : true,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(item.description,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 16)),
              ),
            ),
          ],
        )
      ],
    );
  }
}
