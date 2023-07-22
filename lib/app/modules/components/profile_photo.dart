import 'package:ads_challenge/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105,
      width: 105,
      child: Center(
        child: Stack(
          children: [
            Image.asset("assets/profile/user.png", height: 100, width: 100),
            InkWell(
              onTap: () {
                Get.toNamed(Routes.EDIT_PROFILE);
              },
              child: Align(
                alignment: Alignment.bottomRight,
                child: Image.asset("assets/profile/edit.png",
                    height: 50, width: 50),
              ),
            )
          ],
        ),
      ),
    );
  }
}
