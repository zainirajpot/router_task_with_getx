import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:router_task_with_getx/screens/home_page/view/home_page.dart';
import 'package:router_task_with_getx/screens/profile/profile_page.dart';

import '../screens/detail_page/view/detail_page.dart';
import '../screens/on_boarding/view/onBoarding_page.dart';
import '../screens/sign_in/view/sign_in_page.dart';
import '../screens/sign_up/view/sign_up_view.dart';
import '../screens/splash/splash_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  static const String _signInScreen = "/SignInScreen";
  static const String _signUpScreen = "/SignUpScreen";
  static const String _splashScreen = "/SplashScreen";
  static const String _onBoardingScreen = "/OnBoardingScreen";
  static const String _homeScreen = "/homeScreen";
  static const String _profileScreen = "/profileScreen";
   static const String _detailScreen = "/detailScreen";


  // static const String _detailScreen = "/detailScreen";
  // static const String _settings = "/settings";

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true, path: _splashScreen),
        AutoRoute(page: OnBoardingRoute.page, path: _onBoardingScreen),
        AutoRoute(page: SignInRoute.page, path: _signInScreen),
        AutoRoute(page: SignUpRoute.page, path: _signUpScreen),
        AutoRoute(page: HomeRoute.page, path: _homeScreen),
        AutoRoute(page: ProfileRoute.page, path: _profileScreen),
        AutoRoute(page: DetailRoute.page, path: _detailScreen),

        // AutoRoute(page: SettingsRoute.page, path: _settings),
      ];
}
