import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../router/app_router.dart';
import '../../../util/constatnt/app_icon/app_icons.dart';
import '../../../util/constatnt/app_images/app_images.dart';
import '../../../util/constatnt/app_strings/app_strings.dart';
import '../../../util/widget/app_text_style/app_text_style.dart';
import '../../../util/widget/button/app_button.dart';
import '../../../util/widget/sign_in_widget/welcom_container.dart';

@RoutePage()
class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: height * 0.04),
          Center(
            child: SvgPicture.asset(
              AppImages.group,
              width: 200,
              height: 200,
            ),
          ),
          WelcomeContainer(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.06, vertical: height * 0.06),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppTextStyle(text: AppStrings.welcome),
                  SizedBox(height: height * 0.03),
                  const AppTextStyle(
                      text: AppStrings.welcomeParh,
                      fontSize: false,
                      fontWeight: false),
                  SizedBox(height: height * 0.04),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SignButton(
                          onTap: () {
                        context.pushRoute( SignInRoute());
                          },
                          text: AppStrings.signIn),
                      SignButton(
                          onTap: () {
                         context.pushRoute(const SignUpRoute());
                          },
                          text: AppStrings.signup),
                    ],
                  ),
                  SizedBox(height: height * 0.05),
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.2),
                    child: GestureDetector(
                      onTap: () {
                     //   context.pushRoute(HomeRoute());
                      },
                      child: SizedBox(
                        child: Row(children: [
                          const AppTextAll(
                              text: AppStrings.continueAS,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                          SizedBox(width: width * 0.05),
                          const Icon(AppIcons.forward)
                        ]),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
