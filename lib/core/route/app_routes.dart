import 'package:delivery/core/route/routes.dart';
import 'package:delivery/core/utils/strings.dart';
import 'package:delivery/features/authentication/view/screen/sign_in.dart';
import 'package:delivery/features/onboarding/view/screen/onboarding_screen.dart';
import 'package:delivery/features/onboarding/view_model/onboarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRoutes {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => OnboardingCubit(),
                  child: OnBoardingScreen(),
                ));
      case Routes.signInScreen:
        return MaterialPageRoute(builder: (context) => const SignInScreen());
      default:
        return MaterialPageRoute(builder: (context) => const UnDefinedRoute());
    }
  }
}

class UnDefinedRoute extends StatelessWidget {
  const UnDefinedRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Text(AppStrings.UnDefinedRoute),
    ));
  }
}
