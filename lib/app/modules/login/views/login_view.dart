import 'package:ads_challenge/app/modules/components/rich_text.dart';
import 'package:ads_challenge/app/modules/components/tittle_auth.dart';
import 'package:ads_challenge/app/routes/app_pages.dart';
import 'package:ads_challenge/app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
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
                    child: Column(children: [
                      const SizedBox(
                        height: 80,
                      ),
                      TittleAuth(
                          tittle: "Hello Again!",
                          subTittle:
                              "Fill your details or continue with social media"),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Email",
                            style: TextStyle(fontSize: 16, color: blackColor)),
                      ),
                      const SizedBox(height: 5),
                      TextFormField(
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
                      const SizedBox(height: 15),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Password",
                            style: TextStyle(fontSize: 16, color: blackColor)),
                      ),
                      const SizedBox(height: 5),
                      Obx(() {
                        return TextFormField(
                          style: const TextStyle(color: semiGreyColor),
                          controller: controller.passwordController,
                          obscureText: controller.isPasswordVisible.value,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Kolom tidak boleh kosong';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: "Enter your password",
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
                                  Get.put(LoginController());
                                  controller.isPasswordVisible.value =
                                      !controller.isPasswordVisible.value;
                                },
                                child: Icon(
                                  controller.isPasswordVisible.value
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: semiGreyColor,
                                )),
                          ),
                        );
                      }),
                      const SizedBox(height: 15),
                      Align(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          onTap: () {
                            Get.toNamed(Routes.FORGET_PASSWORD);
                          },
                          child: const Text("Recovery Password",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontSize: 16, color: semiGreyColor)),
                        ),
                      ),
                      const SizedBox(height: 25),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 15),
                        child: ElevatedButton(
                            onPressed: () {
                              Get.put(LoginController());
                              Get.toNamed(Routes.DASHBOARD);
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
                              'Sign In',
                              style: TextStyle(fontSize: 18),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 15),
                        child: ElevatedButton.icon(
                            icon: SvgPicture.asset(
                              'assets/auth/google.svg',
                              height: 24,
                              width: 24,
                            ),
                            onPressed: () {
                              Get.toNamed(Routes.OTP_VERIFICATION);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: semiWhiteColor,
                              foregroundColor: blackColor,
                              minimumSize: const Size(double.infinity, 50),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            label: const Text(
                              'Sign In With Google',
                              style: TextStyle(fontSize: 18),
                            )),
                      ),
                      Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: NewRichText(
                                firstText: "New User?",
                                secondText: "Create Account",
                                page: 1,
                              ),
                            ),
                          ),
                        ],
                      )
                    ])))));
  }
}
