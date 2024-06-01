import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../util/constatnt/app_colors/app_colors.dart';
import '../../util/constatnt/app_images/app_images.dart';
import '../../util/widget/app_text_style/app_text_style.dart';
import '../../util/widget/sign_in_widget/welcom_container.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  final String username;
  final String password;

  const ProfilePage({
    super.key,
    required this.username,
    required this.password,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const AppTextAll(
          text: 'Profile',
          fontWeight: FontWeight.w600,
        ),
        centerTitle: true,
        backgroundColor: AppColors.amber,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: height * 0.1),
            const Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(AppImages.profileImg),
              ),
            ),
            SizedBox(
              height: height * 0.2,
            ),
            WelcomeContainer(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.06, vertical: height * 0.06),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AllertaStencilText(text: 'UserName :'),
                    SizedBox(height: height * 0.03),
                    Center(
                      child: AppTextAll(
                        text: username,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: height * 0.03),
                    const Divider(
                      height: 30,
                      color: AppColors.black,
                    ),
                    SizedBox(height: height * 0.03),
                    const AllertaStencilText(text: 'Password :'),
                    SizedBox(height: height * 0.03),
                    Center(
                      child: AppTextAll(
                        text: password,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
