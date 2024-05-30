import 'package:delivery/features/onboarding/model/onboarding_model.dart';
import 'package:delivery/features/onboarding/view/widget/build_onboarding_image_widget.dart';
import 'package:delivery/features/onboarding/view/widget/build_onboarding_indicator_widget.dart';
import 'package:delivery/features/onboarding/view/widget/build_onboarding_next_button_widget.dart';
import 'package:delivery/features/onboarding/view/widget/build_onboarding_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildOnboardingChildWidget extends StatelessWidget {
  const BuildOnboardingChildWidget({
    super.key,
    required this.onboardingList,
    required this.pageController,
    required this.index,
  });
  final List<OnboardingModel> onboardingList;
  final int index;

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsetsDirectional.only(
        start: 20.w,
        end: 20.w,
        top: 20.h,
        bottom: 40.h,
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BuildOnboardingImageWidget(
              image: onboardingList[index].image,
              visible: index != onboardingList.length - 1,
            ),
            SizedBox(height: 20.h),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BuildOnboardingTextWidget(
                    onboardingModel: onboardingList[index],
                  ),
                  SizedBox(height: 10.h),
                  BuildOnboardingIndicatorWidget(
                    length: onboardingList.length,
                    pageController: pageController,
                  ),
                  BuildOnboardingNextButtonWidget(
                    visible: index == onboardingList.length - 1,
                    index: index,
                    pageController: pageController,
                    length: onboardingList.length,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
