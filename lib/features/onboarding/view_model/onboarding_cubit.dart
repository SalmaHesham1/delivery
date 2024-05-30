import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingInitial());
  static OnboardingCubit get({required BuildContext context}) =>
      BlocProvider.of(context);
  late int index = 0;
  changeNumOfOnboardingScreen({required int num}) {
    index = num;
    emit(ChangeNumOfOnboardingScreenState());
  }
}
