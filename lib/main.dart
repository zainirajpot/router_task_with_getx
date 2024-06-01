import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'router/app_router.dart';
import 'util/constatnt/app_colors/app_colors.dart';

void main() {
  //  SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  //   //DeviceOrientation.portraitDown
  // ]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: AppColors.amber,
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark));
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
final appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate:appRouter.delegate(),
      routeInformationParser:appRouter.defaultRouteParser(),
    );
  }
}

