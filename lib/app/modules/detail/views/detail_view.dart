import 'package:ads_challenge/app/modules/components/basic_card_item.dart';
import 'package:ads_challenge/app/modules/components/circular_icon_widget.dart';
import 'package:ads_challenge/app/modules/detail/views/components/custom_item_widget.dart';
import 'package:ads_challenge/app/routes/app_pages.dart';
import 'package:ads_challenge/app/utils/utils.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:readmore/readmore.dart';

import '../controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  const DetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
     final List<String> assetImages = [
      "assets/detail/shoes.png",
      "assets/detail/shoes.png",
      "assets/detail/shoes.png",
      "assets/detail/shoes.png",
      "assets/detail/shoes.png",
     
    ];
    return Scaffold(
        backgroundColor: semiWhiteColor,
        body: SafeArea(
            child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: CircularIconWidget(
                            iconData: Icons.arrow_back_ios_new_sharp,
                            iconSize: 25,
                            iconColor: blackColor,
                            size: 60,
                            backgroundColor: whiteColor,
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text("Sneaker Shop",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: blackColor)),
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/detail/Icon.png",
                          height: 60,
                          width: 60,
                        )
                      ],
                    ),
                    const SizedBox(height: 40),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Nike Air Max 270 Essential",
                         
                          style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: blackColor)),
                    ),
                    const SizedBox(height: 10),
                    const Align(
                       alignment: Alignment.centerLeft,
                      child: Text("Men's Shoes",
                          
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.normal,
                              color: semiGreyColor)),
                    ),
                    const SizedBox(height: 10),
                    const Align(
                       alignment: Alignment.centerLeft,
                      child: Text("Rp 799.900",
                          
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: blackColor)),
                    ),
                    const SizedBox(height: 10),
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset("assets/detail/shoes.png",height:350,width:350),
                    ),
                  
                     Row(
                      children:  [
                        for (String assetImage in assetImages)
                          Container(
                            margin: const EdgeInsets.all(10),
                            child: CustomItemWidget(
                            assetImage: assetImage,
                            ),
                          )
                      ],
                    ),
                    const SizedBox(height: 20),
                    const ReadMoreText(
                      'The Max Air 270 unit delivers unrivaled, all-day comfort. The sleek, running-inspired design roots you to everything Nike........',
                      trimLines: 2,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: blackColor),
                      colorClickableText: primaryColor,
                      
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Read more',
                      trimExpandedText: 'Read less',
                      moreStyle:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.normal,color: primaryColor),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  decoration: const BoxDecoration(color: whiteColor),
                  height: 150,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                            margin: const EdgeInsets.all(10),
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                                child: Image.asset(
                              "assets/detail/heart.png",
                              width: 24,
                              height: 24,
                            ))),
                      ),
                      const SizedBox(width: 50),
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 25),
                          child: ElevatedButton.icon(
                              icon: Image.asset("assets/detail/bag.png",height:24,width:24),
                              onPressed: () {
                                Get.toNamed(Routes.CART);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: primaryColor,
                                foregroundColor: whiteColor,
                                minimumSize: const Size(double.infinity, 50),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 12),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              label: const Text(
                                'Add to cart',
                                style: TextStyle(fontSize: 18),
                              )),
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        )));
  }
}


