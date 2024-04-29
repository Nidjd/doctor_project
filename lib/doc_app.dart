import 'package:doc_project/core/routing/app_routing.dart';
import 'package:doc_project/core/routing/routes.dart';
import 'package:doc_project/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  final AppRouting appRouting;
  const DocApp({super.key, required this.appRouting});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: ColorManager.mainBlue,
          scaffoldBackgroundColor: Colors.white,
        ),
        onGenerateRoute: appRouting.generateRoutes,
        initialRoute: Routes.onBoardingScreen,
      ),
    );
  }
}
