import 'package:ads_challenge/app/modules/components/app_bar.dart';
import 'package:ads_challenge/app/modules/components/basic_card_item.dart';
import 'package:ads_challenge/app/modules/components/bottom_payment_total.dart';
import 'package:ads_challenge/app/modules/components/circular_icon_widget.dart';
import 'package:ads_challenge/app/routes/app_pages.dart';
import 'package:ads_challenge/app/utils/utils.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../controllers/checkout_controller.dart';

class CheckoutView extends GetView<CheckoutController> {
  const CheckoutView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: semiWhiteColor,
        body: SafeArea(
          child: Container(
            height: 1500,
              child: Stack(
                children: [
                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        AppbarCustom(
                          tittle: "My Cart",
                          routeBack: Routes.CART,
                        ),
                        const SizedBox(height: 5),
                        Card(
                            margin: const EdgeInsets.all(15),
                            color: whiteColor,
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Contact Information",
                                        style:
                                            TextStyle(fontSize: 18, color: blackColor)),
                                  ),
                                  const SizedBox(height: 15),
                                  BasicCardItem(
                                      prefixImage: "assets/checkout/mail.svg",
                                      suffixImage: "assets/checkout/edit.png",
                                      tittle: "faizalfalakh19@gmail.com",
                                      subTittle: "Email"),
                                  const SizedBox(height: 5),
                                  BasicCardItem(
                                      prefixImage: "assets/checkout/telp.svg",
                                      suffixImage: "assets/checkout/edit.png",
                                      tittle: "+62895-4219-71694",
                                      subTittle: "Phone Number"),
                                  const SizedBox(height: 10),
                                  const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Address",
                                        style:
                                            TextStyle(fontSize: 18, color: blackColor)),
                                  ),
                                  const SizedBox(height: 15),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceBetween, // Penempatan teks di pojok kanan dan kiri
                                    children: [
                                      const Text(
                                        'Pangkah, Kabupaten Tegal, Jawa Tengah',
                                        style: TextStyle(
                                            fontSize: 14, color: semiGreyColor),
                                      ),
                                      Image.asset(
                                        "assets/checkout/dropdown.png",
                                        height: 30,
                                        width: 30,
                                      )
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Container(
                                    height: 400,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30)),
                                    child: const WebView(
                                      initialUrl:
                                          "https://www.google.com/maps/place/Kec.+Pangkah,+Kabupaten+Tegal,+Jawa+Tengah/@-6.9931534,109.0859172,12z/data=!3m1!4b1!4m6!3m5!1s0x2e6fbf9f43745329:0x4027a76e352f890!8m2!3d-6.9766802!4d109.1672389!16s%2Fg%2F11b_2q912h?entry=ttu",
                                      javascriptMode: JavascriptMode
                                          .unrestricted, // Aktifkan mode JavaScript
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Payment Method",
                                        style:
                                            TextStyle(fontSize: 18, color: blackColor)),
                                  ),
                                  const SizedBox(height: 15),
                                  BasicCardItem(
                                      prefixImage: "assets/checkout/mandiri.png",
                                      suffixImage: "assets/checkout/dropdown.png",
                                      tittle: "Faizalilham",
                                      subTittle: "**** **** 4464 8878") 
                                ],
                              ),
                            )),
                            const SizedBox(height: 250),   
                      ],
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        color: whiteColor,
                        height: 246,
                        child: Center(child: BottomPaymentTotal(isCheckout: true,)),
                      ))
                ],
              ),
            ),
          
        ));
  }
}
