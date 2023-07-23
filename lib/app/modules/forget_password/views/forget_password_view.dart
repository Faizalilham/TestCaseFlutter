import 'package:ads_challenge/app/modules/components/app_bar.dart';
import 'package:ads_challenge/app/modules/components/tittle_auth.dart';
import 'package:ads_challenge/app/routes/app_pages.dart';
import 'package:ads_challenge/app/utils/utils.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/forget_password_controller.dart';

class ForgetPasswordView extends GetView<ForgetPasswordController> {
  const ForgetPasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Container(
                height: Get.height,
                width: Get.width,
                margin: const EdgeInsets.all(15),
                child: Form(
                    key: controller.formKey,
                    child: Column(
                      children: [
                      AppbarCustom(tittle: "Forget Password", routeBack: Routes.LOGIN)  ,
                      const SizedBox(
                        height: 80,
                      ),
                      TittleAuth(
                          tittle: "Forgot Password",
                          subTittle:
                              "Fill your details or continue with social media"),
                      TextFormField(
                        key: key,
                        style: const TextStyle(color: semiGreyColor),
                        controller: controller.emailController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Kolom tidak boleh kosong';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            hintText: "Enter your email",
                            hintStyle:
                                const TextStyle(color: Color(0XFF6A6A6A)),
                            fillColor: semiWhiteColor,
                            filled: true,
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            suffixIcon: InkWell(
                                onTap: () {
                                  controller.emailController.clear();
                                },
                                child: const Icon(
                                  Icons.clear,
                                  color: semiGreyColor,
                                ))),
                      ),
                      const SizedBox(height: 25),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 15),
                        child: ElevatedButton(
                            onPressed: () {
                              if (controller.formKey.currentState!.validate()) {
                                FocusManager.instance.primaryFocus?.unfocus();
                                controller.showCustomDialog(context);
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: primaryColor,
                              foregroundColor: whiteColor,
                              minimumSize: const Size(double.infinity, 50),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text(
                              'Reset Password',
                              style: TextStyle(fontSize: 18),
                            )),
                      ),
                    ])))));
  }
}
