import 'package:delivery/core/utils/colors.dart';
import 'package:delivery/features/onboarding/model/onboarding_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildOnboardingTextWidget extends StatelessWidget {
  const BuildOnboardingTextWidget({
    super.key,
    required this.onboardingModel,
  });
  final OnboardingModel onboardingModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          textAlign: TextAlign.center,
          maxLines: 6,
          overflow: TextOverflow.ellipsis,
          text: TextSpan(
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 24.sp,
              color: AppColors.darkColor,
            ),
            children: [
              TextSpan(
                text: "${onboardingModel.title}\n\n",
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: AppColors.primaryColor,
                ),
              ),
              TextSpan(
                text: onboardingModel.description,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
