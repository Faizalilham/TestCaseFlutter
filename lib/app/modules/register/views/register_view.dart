import 'package:ads_challenge/app/modules/components/circular_icon_widget.dart';
import 'package:ads_challenge/app/modules/components/form.dart';
import 'package:ads_challenge/app/modules/components/rich_text.dart';
import 'package:ads_challenge/app/modules/components/tittle_auth.dart';
import 'package:ads_challenge/app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                      Align(
                        alignment: Alignment.centerLeft,
                        child: CircularIconWidget(
                        iconData: Icons.arrow_back_ios_new_sharp,
                        iconSize: 25,
                        iconColor: blackColor,
                        size: 60,
                        backgroundColor: semiWhiteColor,
                      ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      TittleAuth(
                          tittle: "Register Account",
                          subTittle:
                              "Fill your details or continue with social media"),
                      
                      const SizedBox(height: 15),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Your name",
                            style: TextStyle(
                                fontSize: 16, color: blackColor)),
                      ),
                      const SizedBox(height: 5),
                      TextFormField(
                        key: key,
                        style: const TextStyle(color: semiGreyColor),
                        controller: controller.nameController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Kolom tidak boleh kosong';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: "Enter your name",
                          hintStyle: const TextStyle(color: Color(0XFF6A6A6A)),
                          fillColor: semiWhiteColor,
                          filled: true,
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          suffixIcon: InkWell(
                                onTap: () {
                                  controller.nameController.clear();
                                },
                                child: const Icon(
                                  Icons.clear,
                                  color: semiGreyColor,
                                ))
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Email",
                            style: TextStyle(fontSize: 16, color: blackColor)),
                      ),
                      const SizedBox(height: 5),
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
                          hintStyle: const TextStyle(color: Color(0XFF6A6A6A)),
                          fillColor: semiWhiteColor,
                          filled: true,
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          suffixIcon: InkWell(
                                onTap: () {
                                  controller.emailController.clear();
                                },
                                child: const Icon(
                                  Icons.clear,
                                  color: semiGreyColor,
                                ))
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Password",
                            style: TextStyle(fontSize: 16, color: blackColor)),
                      ),
                      const SizedBox(height: 5),
                      Obx((){
                        return TextFormField(
                        key: key,
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
                          hintStyle: const TextStyle(color: Color(0XFF6A6A6A)),
                          fillColor: semiWhiteColor,
                          filled: true,
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          suffixIcon: InkWell(
                                  onTap: () {
                                    controller.isPasswordVisible.value =
                                        !controller
                                            .isPasswordVisible.value;
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
                      const SizedBox(height: 25),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 15),
                        child: ElevatedButton(
                            onPressed: () {
                              Get.toNamed("");
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
                              'Sign Up',
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
                              if (controller.formKey.currentState!.validate()) {
                                FocusManager.instance.primaryFocus?.unfocus();
                                Get.toNamed("");
                              }
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
                              'Sign Up With Google',
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
                                firstText: "Already Have Account?",
                                secondText: "Log In",
                                page: 0,
                              ),
                            ),
                          ),
                        ],
                      )
                    ]))))
    );
  }
}
