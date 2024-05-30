import 'package:flutter/material.dart';

extension NavigationExtension on BuildContext {
  // Push Named with options argument
  void pushNamed(String routeName, {Object? arguments}) {
    Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }
}
