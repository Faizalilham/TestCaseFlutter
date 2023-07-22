import 'package:ads_challenge/core/data/user_repository.dart';
import 'package:ads_challenge/core/domain/auth/login_validator.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class LoginController extends GetxController {
  final formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final UserRepository _userRepository = UserRepository();

  final RxString _email = ''.obs;
  final RxString _password = ''.obs;
  final RxBool _isLoading = false.obs;

  var isPasswordVisible = false.obs;

  String get email => _email.value;
  String get password => _password.value;
  bool get isLoading => _isLoading.value;

  void onEmailChanged(String value) {
    _email.value = value;
  }

  void onPasswordChanged(String value) {
    _password.value = value;
  }

  Future<void> login() async {
    final emailError = LoginValidator.validateEmail(email);
    final passwordError = LoginValidator.validatePassword(password);

    if (emailError != null || passwordError != null) {
      Get.snackbar('Error', 'Please fill in all fields correctly.',
          snackPosition: SnackPosition.BOTTOM);
      return;
    }

    _isLoading.value = true;
    try {
      final isSuccess = await _userRepository.login(email, password);
      _isLoading.value = false;
      if (isSuccess) {
        Get.snackbar('Success', 'Login successful!',
            snackPosition: SnackPosition.BOTTOM);
        Get.toNamed("");
      } else {
        Get.snackbar('Error', 'Invalid email or password.',
            snackPosition: SnackPosition.BOTTOM);
      }
    } catch (e) {
      _isLoading.value = false;
      Get.snackbar('Error', 'An error occurred. Please try again later.',
          snackPosition: SnackPosition.BOTTOM);
      print(e);
    }
  }
}
