import 'package:ads_challenge/app/modules/components/category.dart';
import 'package:ads_challenge/app/modules/components/shoes.dart';
import 'package:ads_challenge/app/routes/app_pages.dart';
import 'package:ads_challenge/app/utils/utils.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: semiWhiteColor,
          index: 2,
          color: whiteColor,
          items: <Widget>[
            SvgPicture.asset(
              'assets/home/home.svg',
              width: 30,
              height: 30,
            ),
            SvgPicture.asset(
              'assets/home/notif.svg',
              width: 30,
              height: 30,
            ),
            SvgPicture.asset(
              'assets/home/notif.svg',
              width: 30,
              height: 30,
            ),
            SvgPicture.asset(
              'assets/home/notif.svg',
              width: 30,
              height: 30,
            ),
            InkWell(
              onTap: () {
                Get.toNamed(Routes.PROFILE);
              },
              child: SvgPicture.asset(
                'assets/home/profile.svg',
                width: 30,
                height: 30,
              ),
            ),
          ],
          onTap: (index) {},
        ),
        backgroundColor: semiWhiteColor,
        body: Container(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
              child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    ZoomDrawer.of(context)!.toggle();
                  },
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: SvgPicture.asset(
                        "assets/home/Hamburger.svg",
                        height: 30,
                        width: 30,
                      )),
                ),
                const SizedBox(width: 10),
                Image.asset(
                  "assets/home/explorer.png",
                  height: 160,
                  width: 160,
                ),
                const SizedBox(width: 10),
                Image.asset(
                  "assets/home/Icons.png",
                  height: 60,
                  width: 60,
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Card(
                      color: whiteColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 8,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: const TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 6, vertical: 16),
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: semiGreyColor),
                            hintText: "Looking for shoes",
                            iconColor: semiGreyColor,
                            icon: Icon(
                              Icons.search,
                              color: semiGreyColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: primaryColor,
                        ),
                        child: Center(
                            child: SvgPicture.asset(
                          "assets/home/filter.svg",
                          height: 30,
                          width: 30,
                        )),
                      )),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Align(
                alignment: Alignment.centerLeft,
                child: Text("Select Category",
                    style: TextStyle(
                        fontSize: 20,
                        color: blackColor,
                        fontWeight: FontWeight.bold))),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Category(
                  tittle: "All Shoes",
                  color: whiteColor,
                ),
                Category(
                  tittle: "Outdor",
                  color: primaryColor,
                ),
                Category(tittle: "Tennis", color: whiteColor)
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Popular shoes",
                        style: TextStyle(
                            fontSize: 20,
                            color: blackColor,
                            fontWeight: FontWeight.normal))),
                Align(
                    alignment: Alignment.centerRight,
                    child: Text("See all",
                        style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                            fontWeight: FontWeight.bold))),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap:(){
                        Get.toNamed(Routes.DETAIL);
                    },
                    child: Container(
                      height: 400,
                      child: Shoes(
                        name: "Nike Jordan",
                        price: "Rp 320.000",
                        imageUrl: "assets/home/shoes.png",
                        onAddButtonPressed: () {
                          Get.toNamed(Routes.DETAIL);
                        },
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: (){
                      Get.toNamed(Routes.DETAIL);
                    },
                    child: Container(
                      height: 400, 
                      child: Shoes(
                        name: "Nike Air Max",
                        price: "Rp 752.000",
                        imageUrl: "assets/home/shoes.png",
                        onAddButtonPressed: () {
                          Get.toNamed(Routes.DETAIL);
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text("New Arrivals",
                        style: TextStyle(
                            fontSize: 20,
                            color: blackColor,
                            fontWeight: FontWeight.normal))),
                Align(
                    alignment: Alignment.centerRight,
                    child: Text("See all",
                        style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                            fontWeight: FontWeight.bold))),
              ],
            ),
            Image.asset(
              "assets/home/arrivals.png",
            )
          ])),
        ));
  }
}
