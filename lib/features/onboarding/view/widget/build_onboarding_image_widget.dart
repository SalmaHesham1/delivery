import 'package:delivery/core/extension/localization_extensions.dart';
import 'package:delivery/core/extension/navigation_extension.dart';
import 'package:delivery/core/route/routes.dart';
import 'package:delivery/core/utils/colors.dart';
import 'package:flutter/material.dart';

class BuildOnboardingImageWidget extends StatelessWidget {
  const BuildOnboardingImageWidget(
      {super.key, required this.image, required this.visible});
  final String image;
  final bool visible;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        alignment: AlignmentDirectional.topEnd,
        child: Visibility(
          visible: visible,
          child: TextButton(
            onPressed: () => context.pushNamed(Routes.signInScreen),
            child: Text(
              context.skip,
              style: const TextStyle(
                color: AppColors.lightColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
