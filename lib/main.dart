import 'package:ads_challenge/app/utils/utils.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Nike",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: primaryColor,
        textTheme: GoogleFonts.poppinsTextTheme().apply(bodyColor: Colors.white)
      ),
    ),
  );
}
