import 'package:ads_challenge/app/modules/components/dialog.dart';
import 'package:ads_challenge/app/routes/app_pages.dart';
import 'package:ads_challenge/app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomPaymentTotal extends StatelessWidget {
  bool isCheckout;
  BottomPaymentTotal({Key? key, required this.isCheckout}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Subtotal',
                style: TextStyle(fontSize: 16, color: semiGreyColor),
              ),
              Text(
                'Rp 1.753.950',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: blackColor),
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Delivery',
                style: TextStyle(fontSize: 16, color: semiGreyColor),
              ),
              Text(
                'Rp 60.200',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: blackColor),
              )
            ],
          ),
          const SizedBox(height: 15),
          Image.asset("assets/checkout/dashed.png"),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Total Cost',
                style: TextStyle(fontSize: 16, color: blackColor),
              ),
              Text(
                'Rp 1.814.150',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: primaryColor),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
            child: ElevatedButton(
                onPressed: () {
                  if (isCheckout) {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return CustomDialog(
                          image: "assets/checkout/payment.png",
                          tittle: "Your Payment is Successful",
                          subTittle: "",
                          showButton: true,
                          onPressed: () {
                            Get.offAllNamed(Routes.DASHBOARD);
                          },
                        );
                      },
                    );
                  } else {
                    Get.toNamed(Routes.CHECKOUT);
                  }
                },
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
                child: const Text(
                  'Checkout',
                  style: TextStyle(fontSize: 18),
                )),
          ),
        ],
      ),
    );
  }
}
