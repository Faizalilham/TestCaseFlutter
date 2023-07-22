import 'package:ads_challenge/core/domain/entities/onboarding_page_item.dart';
import 'package:ads_challenge/core/usecase/onboarding_usecase.dart';

class OnboardingRepository {
  final OnboardingUseCase _useCase = OnboardingUseCase();

  List<OnboardingPageItem> getOnboardingItems() {
    return _useCase.getOnboardingItems();
  }
}
