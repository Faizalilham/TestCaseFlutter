import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  
  final formKey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();


  var isPasswordVisible = false.obs;


}
