import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../router/app_router.dart';
import '../../../util/constatnt/app_icon/app_icons.dart';
import '../../../util/constatnt/app_images/app_images.dart';
import '../../../util/constatnt/app_strings/app_strings.dart';
import '../../../util/widget/app_text_style/app_text_style.dart';
import '../../../util/widget/button/app_button.dart';
import '../../../util/widget/sign_in_widget/signin_container.dart';
import '../../../util/widget/text_filed.dart';

@RoutePage()
class SignInPage extends StatelessWidget {
  SignInPage({super.key});

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(
      children: [
        const SignInContainer(
          text: AppStrings.signIn,
        ),
        Padding(
          padding: EdgeInsets.only(top: height * 0.27),
          child: SignUpRoundContainer(
            child: Padding(
              padding: const EdgeInsets.all(17),
              child: Column(
                children: [
                  SizedBox(height: height * 0.05),
                  CustomTextField(
                    hintText: AppStrings.username,
                    controller: usernameController,
                  ),
                  SizedBox(height: height * 0.03),
                  CustomTextField(
                    hintText: AppStrings.password,
                    controller: passwordController,
                  ),
                  SizedBox(height: height * 0.02),
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.6),
                    child: const AppTextAll(
                        text: AppStrings.forgotP, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: height * 0.04),
                  SignButton(
                      onTap: () {
                        String username = usernameController.text;
                        String password = passwordController.text;
                        context.router.push(HomeRoute(
                          username: username,
                          password: password,
                        ));
                      },
                    text: AppStrings.signIn,
                    width: true,
                    height: true,
                  ),
                  SizedBox(height: height * 0.04),
                  const SizedBoxContainer(
                    imagePath: AppImages.google,
                    labelText: AppStrings.google,
                    iconData: AppIcons.forward,
                  ),
                  SizedBox(height: height * 0.04),
                  const SizedBoxContainer(
                    imagePath: AppImages.fb,
                    labelText: AppStrings.fb,
                    iconData: AppIcons.forward,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}

// class SignInPage extends GetView<SignInController> {
//   const SignInPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var height = MediaQuery.of(context).size.height;
//     var width = MediaQuery.of(context).size.width;
//     return Scaffold(
//         body: Stack(
//       children: [
//         const SignInContainer(
//           text: AppStrings.signIn,
//         ),
//         Padding(
//           padding: EdgeInsets.only(top: height * 0.27),
//           child: SignUpRoundContainer(
//             child: Padding(
//               padding: const EdgeInsets.all(17),
//               child: Column(
//                 children: [
//                   SizedBox(height: height * 0.05),
//                   const CustomTextField(hintText: AppStrings.username),
//                   SizedBox(height: height * 0.03),
//                   const CustomTextField(hintText: AppStrings.password),
//                   SizedBox(height: height * 0.02),
//                   Padding(
//                     padding: EdgeInsets.only(left: width * 0.6),
//                     child: const AppTextAll(
//                         text: AppStrings.forgotP, fontWeight: FontWeight.w500),
//                   ),
//                   SizedBox(height: height * 0.04),
//                   SignButton(
//                     onTap: () {
//                         context.pushRoute(HomeRoutes());
//                     },
//                     text: AppStrings.signIn,
//                     width: true,
//                     height: true,
//                   ),
//                   SizedBox(height: height * 0.04),
//                   const SizedBoxContainer(
//                     imagePath: AppImages.google,
//                     labelText: AppStrings.google,
//                     iconData: AppIcons.forward,
//                   ),
//                   SizedBox(height: height * 0.04),
//                   const SizedBoxContainer(
//                     imagePath: AppImages.fb,
//                     labelText: AppStrings.fb,
//                     iconData: AppIcons.forward,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         )
//       ],
//     ));
//   }
// }
