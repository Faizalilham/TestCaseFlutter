import 'package:ads_challenge/app/modules/components/circular_icon_widget.dart';
import 'package:ads_challenge/app/modules/components/profile_photo.dart';
import 'package:ads_challenge/app/routes/app_pages.dart';
import 'package:ads_challenge/app/utils/utils.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        body: Container(
          margin: const EdgeInsets.all(12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Get.offAllNamed(Routes.DASHBOARD);
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
                  const SizedBox(width: 100),
                  const Text("Done",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: primaryColor)),
                ],
              ),
              Image.asset("assets/profile/user.png"),
              const SizedBox(
                height: 10,
              ),
              const Text("Faizalilham",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: blackColor)),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(Routes.EDIT_PROFILE);
                },
                child: const Text("Change Profile",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: primaryColor)),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text("First Name",
                    style: TextStyle(fontSize: 16, color: blackColor)),
              ),
              const SizedBox(height: 5),
              TextFormField(
                enabled: false,
                initialValue: "Faizal",
                style: const TextStyle(color: blackColor),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Kolom tidak boleh kosong';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    fillColor: semiWhiteColor,
                    filled: true,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    suffixIcon: InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.check,
                          color: primaryColor,
                        ))),
              ),
              const SizedBox(height: 15),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text("Last Name",
                    style: TextStyle(fontSize: 16, color: blackColor)),
              ),
              const SizedBox(height: 5),
              TextFormField(
                enabled: false,
                initialValue: "Ilham",
                style: const TextStyle(color: blackColor),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Kolom tidak boleh kosong';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    fillColor: semiWhiteColor,
                    filled: true,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    suffixIcon: InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.check,
                          color: primaryColor,
                        ))),
              ),
              const SizedBox(height: 15),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text("Location",
                    style: TextStyle(fontSize: 16, color: blackColor)),
              ),
              const SizedBox(height: 5),
              TextFormField(
                enabled: false,
                initialValue: "Tegal, Jawa Tengah",
                style: const TextStyle(color: blackColor),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Kolom tidak boleh kosong';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    fillColor: semiWhiteColor,
                    filled: true,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    suffixIcon: InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.check,
                          color: primaryColor,
                        ))),
              ),
              const SizedBox(height: 15),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text("Mobile Number",
                    style: TextStyle(fontSize: 16, color: blackColor)),
              ),
              const SizedBox(height: 5),
              Container(
                height: 55,
                decoration: BoxDecoration(
                    color: semiWhiteColor,
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 40,
                      child: TextField(
                        controller: controller.countryController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                            enabled: false,
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: blackColor)),
                      ),
                    ),
                    const Text(
                      "|",
                      style: TextStyle(fontSize: 33, color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Expanded(
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                            enabled: false,
                            border: InputBorder.none,
                            hintText: "895421971694",
                            hintStyle: TextStyle(color: blackColor)),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
