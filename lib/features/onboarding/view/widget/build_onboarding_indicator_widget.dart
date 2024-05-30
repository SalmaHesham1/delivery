import 'package:delivery/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BuildOnboardingIndicatorWidget extends StatelessWidget {
  const BuildOnboardingIndicatorWidget(
      {super.key, required this.length, required this.pageController});
  final PageController pageController;
  final int length;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController, // PageController
      count: length,
      effect: const WormEffect(
        dotColor: AppColors.lightColor,
        activeDotColor: AppColors.primaryColor,
      ), // your preferred effect
      onDotClicked: (index) {
        pageController.animateToPage(index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut);
      },
    );
  }
}
