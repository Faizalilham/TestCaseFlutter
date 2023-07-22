import 'package:ads_challenge/core/data/onboarding_repository.dart';
import 'package:ads_challenge/core/domain/entities/onboarding_page_item.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingController extends GetxController {
  final OnboardingRepository _repository = OnboardingRepository();

  final _currentPageIndex = 0.obs;
  int get currentPageIndex => _currentPageIndex.value;

  List<OnboardingPageItem> get onboardingItems =>
      _repository.getOnboardingItems();

  void onPageChanged(int index) {
    _currentPageIndex.value = index;
  }

  void updatePageIndex(int index) {
    _currentPageIndex.value = index;
    update(); 
  }

  Future setOnboardingKey() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool("onboarding", true);
  }
}
