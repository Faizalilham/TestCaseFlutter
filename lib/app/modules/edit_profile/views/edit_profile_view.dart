import 'package:ads_challenge/app/modules/components/circular_icon_widget.dart';
import 'package:ads_challenge/app/modules/components/profile_photo.dart';
import 'package:ads_challenge/app/routes/app_pages.dart';
import 'package:ads_challenge/app/utils/utils.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/edit_profile_controller.dart';

class EditProfileView extends GetView<EditProfileController> {
  const EditProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            margin: const EdgeInsets.all(12),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.offAllNamed(Routes.PROFILE);
                      },
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: CircularIconWidget(
                          iconData: Icons.arrow_back_ios_new_sharp,
                          iconSize: 25,
                          iconColor: blackColor,
                          size: 60,
                          backgroundColor: semiWhiteColor,
                        ),
                      ),
                    ),
                    const SizedBox(width: 100),
                    const Text("Profile",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: blackColor)),
                  ],
                ),
                const SizedBox(height: 30),
                const ProfilePhoto(),
                const SizedBox(height: 50),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Your name",
                      style: TextStyle(fontSize: 16, color: greyColor)),
                ),
                const SizedBox(height: 5),
                TextFormField(
                  initialValue: "Faizalilham",
                  style: const TextStyle(color: blackColor),
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
                          ))),
                ),
                const SizedBox(height: 15),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Email",
                      style: TextStyle(fontSize: 16, color: greyColor)),
                ),
                const SizedBox(height: 5),
                TextFormField(
                  initialValue: "faizalfalakh19@gmail.com",
                  style: const TextStyle(color: blackColor),
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
                          ))),
                ),
                const SizedBox(height: 15),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Password",
                      style: TextStyle(fontSize: 16, color: greyColor)),
                ),
                const SizedBox(height: 5),
                Obx(() {
                  return TextFormField(
                    initialValue: "12345",
                    style: const TextStyle(color: semiGreyColor),
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
                        style: TextStyle(fontSize: 16, color: semiGreyColor)),
                  ),
                ),
                const SizedBox(height: 25),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: ElevatedButton(
                      onPressed: () {},
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
                        'Save Now',
                        style: TextStyle(fontSize: 18),
                      )),
                ),

              ],
            ),
          ),
        ));
  }
}
