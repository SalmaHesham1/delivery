import 'package:delivery/core/extension/localization_extensions.dart';
import 'package:delivery/features/onboarding/model/onboarding_model.dart';
import 'package:delivery/features/onboarding/view/widget/build_onboarding_body_widget.dart';
import 'package:delivery/generated/assets.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final List<OnboardingModel> onboardingList = [
      OnboardingModel(
        image: Assets.imagesOnboarding1,
        title: context.onboardingTitle1,
        description: context.onboardingDescription1,
      ),
      OnboardingModel(
        image: Assets.imagesOnboarding2,
        title: context.onboardingTitle2,
        description: context.onboardingDescription2,
      ),
      OnboardingModel(
        image: Assets.imagesOnboarding3,
        title: context.onboardingTitle3,
        description: context.onboardingDescription3,
      ),
    ];
    return Scaffold(
      body: BuildOnboardingBodyWidget(
        onboardingList: onboardingList,
        pageController: pageController,
      ),
    );
  }
}
