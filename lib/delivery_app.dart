import 'package:delivery/core/route/app_routes.dart';
import 'package:delivery/core/route/routes.dart';
import 'package:delivery/core/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'generated/l10n.dart';

class DeliveryApp extends StatelessWidget {
  const DeliveryApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //hide status bar
    // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    //   systemNavigationBarColor: Colors.transparent,
    //   statusBarColor: Colors.transparent,
    // ));
    //hide nave bar and status bar
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    //hide nav bar
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
    //     overlays: [SystemUiOverlay.top]);
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) => MaterialApp(
        locale: Locale.fromSubtags(languageCode: 'en'),
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        title: AppStrings.appName,
        onGenerateRoute: AppRoutes.onGenerateRoute,
        initialRoute: Routes.onBoarding,
      ),
    );
  }
}
