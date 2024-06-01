import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../router/app_router.dart';
import '../../../util/constatnt/app_images/app_images.dart';
import '../../../util/constatnt/app_strings/app_strings.dart';
import '../../../util/widget/button/app_button.dart';
import '../../../util/widget/horizontal_line.dart';
import '../../../util/widget/sign_in_widget/signin_container.dart';
import '../../../util/widget/text_filed.dart';

@RoutePage()
class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController rePassController = TextEditingController();

    return Scaffold(
      body: Stack(
        children: [
          const SignInContainer(text: AppStrings.signup),
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
                    SizedBox(height: height * 0.03),
                    CustomTextField(
                      hintText: AppStrings.rePass,
                      controller: rePassController,
                    ),
                    SizedBox(height: height * 0.04),
                    const HorizontalLinesWithText(text: AppStrings.orRegister),
                    SizedBox(height: height * 0.04),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(AppImages.google),
                        SizedBox(width: width * 0.04),
                        Image.asset(AppImages.fb),
                      ],
                    ),
                    SizedBox(height: height * 0.06),
                    SignButton(
                      onTap: () {
                        // Capture the username and password input
                        final String username = usernameController.text;
                        final String password = passwordController.text;

                        // Navigate to HomeRoute with the captured parameters
                        context.pushRoute(HomeRoute(
                          username: username,
                          password: password,
                        ));
                      },
                      text: AppStrings.signIn,
                      width: true,
                      height: true,
                    ),
                    SizedBox(height: height * 0.04),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
