import 'package:delivery/core/extension/localization_extensions.dart';
import 'package:delivery/core/extension/navigation_extension.dart';
import 'package:delivery/core/route/routes.dart';
import 'package:delivery/core/widgets/custom_elevated_button_widget.dart';
import 'package:flutter/material.dart';

class BuildOnboardingNextButtonWidget extends StatelessWidget {
  const BuildOnboardingNextButtonWidget({
    super.key,
    required this.index,
    required this.pageController,
    required this.length,
    required this.visible,
  });
  final bool visible;
  final int index;
  final PageController pageController;
  final int length;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible,
      child: CustomElevatedButtonWidget(
          onPressed: () {
            _handleButtonPress(
              context,
              index,
            );
          },
          text: context.next),
    );
  }

  void _handleButtonPress(BuildContext context, int index) {
    index == length - 1
        ? context.pushNamed(Routes.signInScreen)
        : pageController.nextPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut);
  }
}
