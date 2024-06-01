import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../util/constatnt/app_colors/app_colors.dart';
import '../../../util/constatnt/app_images/app_images.dart';
import '../../../util/widget/app_text_style/app_text_style.dart';
import '../../../util/widget/detail_white_container.dart';
import '../../../util/widget/positioned_image.dart';

@RoutePage()
class DetailPage extends StatelessWidget {
  final String text;
  final String ml;
  final String price;
  final String imagePathBottle;

  const DetailPage({
    super.key,
    required this.text,
    required this.ml,
    required this.price,
    required this.imagePathBottle,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.amber,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: height,
              width: width,
              color: AppColors.amber,
              child: Padding(
                padding:
                    EdgeInsets.only(top: height * 0.177, right: width * 0.588),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: width * 0.07),
                      child: AppTextAll(
                          text: text,
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: AppColors.whiteColor),
                    ),
                    SizedBox(height: height * 0.01),

                    AppTextAll(
                        text: ml,
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: AppColors.whiteColor),
                                            SizedBox(height: height * 0.01),

                    AppTextAll(
                        text: price,
                        fontSize: 22,
                        fontWeight: FontWeight.w600),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.05, vertical: height * 0.05),
              child: Row(
                children: [
                  Image.asset(AppImages.backButon, height: 24, width: 24),
                  SizedBox(width: width * 0.07),
                  Image.asset(AppImages.icon, height: 24, width: 24),
                  SizedBox(width: width * 0.622),
                  Image.asset(AppImages.shoping, height: 24, width: 24),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: DetailWhiteContainer(height: height, width: width),
            ),
            PositionedImage(
                top: height * 0.15,
                left: width * 0.63,
                imagePath: imagePathBottle),
            PositionedImage(
              imagePath: imagePathBottle,
              left: width * 0.440,
              top: height * 0.15,
            ),
            PositionedImage(
              left: width * 0.54,
              imagePath: imagePathBottle,
              top: height * 0.17,
            ),
          //  SizedBox(width: width * 0.8),
          ],
        ),
      ),
    );
  }
}
