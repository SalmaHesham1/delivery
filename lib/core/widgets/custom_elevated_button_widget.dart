import 'package:delivery/core/utils/colors.dart';
import 'package:delivery/core/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButtonWidget extends StatelessWidget {
  const CustomElevatedButtonWidget({
    super.key,
    required this.onPressed,
    required this.text,
  });
  final VoidCallback? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      width: double.infinity,
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              AppColors.primaryColor,
            ),
            overlayColor: MaterialStateProperty.all(
              AppColors.primaryColor,
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    15.r,
                  ),
                ),
              ),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
                fontFamily: AppStrings.fontBebasNeue,
                fontWeight: FontWeight.w400,
                fontSize: 18.sp,
                color: Colors.white),
          )),
    );
  }
}
