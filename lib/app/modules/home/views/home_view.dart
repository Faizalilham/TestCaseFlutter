import 'package:ads_challenge/app/modules/home/views/components/home.dart';
import 'package:ads_challenge/app/modules/home/views/components/menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      style: DrawerStyle.Style1,
      menuScreen: MenuPage(),
      mainScreen: Home());
  }
}
