
import 'package:ads_challenge/core/domain/entities/onboarding_page_item.dart';

class OnboardingUseCase{
   List<OnboardingPageItem> getOnboardingItems() {
    return [
      OnboardingPageItem(
          headline: 'WELCOME TO NIKE',
          imagePath: 'assets/onboarding/first_onboarding.png',
          title: '',
          description: ''),
      OnboardingPageItem(
          headline: '',
          imagePath: 'assets/onboarding/second_onboarding.png',
          title: 'Let’s Start Journey With Nike',
          description: 'Smart, Gorgeous & Fashionable Collection Explor Now'),
      OnboardingPageItem(
          headline: '',
          imagePath: 'assets/onboarding/third_onboarding.png',
          title: 'You Have the Power To',
          description:
              'There Are Many Beautiful And Attractive Plants To Your Room'),
      // Add more onboarding items as needed
    ];
  }
}