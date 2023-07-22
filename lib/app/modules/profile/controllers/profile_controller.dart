import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {

  TextEditingController countryController = TextEditingController();

  @override
  void onInit() {
    countryController.text = "+91";
    super.onInit();
  }

  @override
  void onClose() {
    countryController.dispose();
    super.onClose();
  }
 
}
