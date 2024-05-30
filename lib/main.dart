import 'package:delivery/core/helper/bloc_observer.dart';
import 'package:delivery/delivery_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  Future.wait({
    ScreenUtil.ensureScreenSize(),
  });
  Bloc.observer = MyBlocObserver();
  runApp(const DeliveryApp());
}
