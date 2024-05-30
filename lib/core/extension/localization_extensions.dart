import 'package:delivery/generated/l10n.dart';
import 'package:flutter/material.dart';

extension LocalizationExtension on BuildContext {
  S get localized => S.of(this);

  String get next => localized.next;
  String get onboardingTitle1 => localized.onboardingTitle1;
  String get onboardingTitle2 => localized.onboardingTitle2;
  String get onboardingTitle3 => localized.onboardingTitle3;
  String get onboardingDescription1 => localized.onboardingDescription1;
  String get onboardingDescription2 => localized.onboardingDescription2;
  String get onboardingDescription3 => localized.onboardingDescription3;
  String get skip => localized.skip;
}
