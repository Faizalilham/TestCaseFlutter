import 'package:ads_challenge/app/modules/cart/views/components/product_item.dart';
import 'package:ads_challenge/app/modules/components/app_bar.dart';
import 'package:ads_challenge/app/modules/components/bottom_payment_total.dart';
import 'package:ads_challenge/app/routes/app_pages.dart';
import 'package:ads_challenge/app/utils/utils.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  const CartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
        body: SafeArea(
            child: Stack(
      children: [
        Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                AppbarCustom(tittle: "My Cart", routeBack: Routes.DASHBOARD),
                const SizedBox(height: 20),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text("3 Items",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: blackColor)),
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: Obx(
                    () => ListView.builder(
                      itemCount: controller.products.length,
                      itemBuilder: (context, index) {
                        final product = controller.products[index];
                        return ProductItem(
                          product: product,
                          onDeletePressed: () {
                            controller.deleteProduct(index);
                          },
                        );
                      },
                    ),
                  ),
                ),
              ],
            )),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: whiteColor,
              height: 246,
              child: Center(child: BottomPaymentTotal(isCheckout: false,)),
            ))
      ],
    )));
  }
}
