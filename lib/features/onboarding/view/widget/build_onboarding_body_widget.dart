import 'package:delivery/features/onboarding/model/onboarding_model.dart';
import 'package:delivery/features/onboarding/view/widget/build_onboarding_child_widget.dart';
import 'package:delivery/features/onboarding/view_model/onboarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BuildOnboardingBodyWidget extends StatelessWidget {
  const BuildOnboardingBodyWidget(
      {super.key, required this.onboardingList, required this.pageController});
  final List<OnboardingModel> onboardingList;

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, OnboardingState>(
        builder: (context, state) {
      return PageView.builder(
          physics: const BouncingScrollPhysics(),
          controller: pageController,
          onPageChanged: (value) {
            OnboardingCubit.get(context: context)
                .changeNumOfOnboardingScreen(num: value);
          },
          itemCount: onboardingList.length,
          itemBuilder: (context, index) {
            return BuildOnboardingChildWidget(
              onboardingList: onboardingList,
              pageController: pageController,
              index: index,
            );
          });
    });
  }
}
