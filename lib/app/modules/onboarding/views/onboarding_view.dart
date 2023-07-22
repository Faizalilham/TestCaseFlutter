import 'package:ads_challenge/app/modules/home/views/components/home.dart';
import 'package:ads_challenge/app/modules/login/controllers/login_controller.dart';
import 'package:ads_challenge/app/modules/login/views/login_view.dart';
import 'package:ads_challenge/app/modules/onboarding/views/components/onboarding_item_widget.dart';
import 'package:ads_challenge/app/utils/utils.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  OnboardingView({Key? key}) : super(key: key);

  final _pageController = CarouselController();

  @override
  Widget build(BuildContext context) {
    Get.put(OnboardingController());
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: CarouselSlider.builder(
                  carouselController: _pageController,
                  itemCount: controller.onboardingItems.length,
                  itemBuilder: (context, index, realIndex) {
                    final item = controller.onboardingItems[index];
                    return OnboardingItemWidget(item: item);
                  },
                  options: CarouselOptions(
                    onPageChanged:
                        (int index, CarouselPageChangedReason reason) {
                      controller.onPageChanged(index);
                    },
                    viewportFraction: 1.0,
                    enableInfiniteScroll: false,
                    height: 1050,
                    initialPage: 0,
                  ),
                ),
              ),
            ),
            Padding(
                padding:
                    const EdgeInsets.only(left: 20, right: 20, bottom: 100),
                child: Obx(() {
                  return AnimatedSmoothIndicator(
                    // Use AnimatedSmoothIndicator instead of SmoothPageIndicator
                    activeIndex: controller.currentPageIndex,
                    count: controller.onboardingItems.length,
                    effect: const ScrollingDotsEffect(
                      radius: 2,
                      activeDotColor: orangeColor,
                      dotHeight: 4,
                      dotWidth: 20,
                      spacing: 8,
                      activeStrokeWidth: 2,
                      strokeWidth: 1,
                    ),
                  );
                })),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ElevatedButton(
                onPressed: () async {
                  if (controller.currentPageIndex == 2) {
                    controller.setOnboardingKey();
                    Get.put(LoginController());
                    Get.offAll(() => const LoginView());
                  }
                  _pageController.nextPage();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: whiteColor,
                  foregroundColor: blackColor,
                  minimumSize: const Size(double.infinity, 50),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Obx(() {
                  String buttonText =
                      controller.currentPageIndex == 0 ? 'Get Started' : 'Next';
                  return Text(
                    buttonText,
                    style: const TextStyle(fontSize: 18),
                  );
                }),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
