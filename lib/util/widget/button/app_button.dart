import 'package:flutter/material.dart';

import '../../constatnt/app_colors/app_colors.dart';
import '../../constatnt/app_strings/app_strings.dart';
import '../app_text_style/app_text_style.dart';

class SignButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool height;
  final bool width;

  const SignButton({
    super.key,
    required this.text,
    required this.onTap,
    this.height = false,
    this.width = false,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: this.height ? height * 0.066 : height * 0.06,
        width: this.width ? width * 0.8 : width * 0.4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(55),
          color: Colors.black,
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: AppColors.whiteColor,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
        ),
      ),
    );
  }
}

class GradientButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const GradientButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          height: height * 0.06,
          width: width * 0.4,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: const LinearGradient(
              colors: [
                Color(0xFFF4C314),
                Color(0xffFF8603),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const Center(
              child: AppTextAll(
            text: AppStrings.byNow,
            color: AppColors.whiteColor,
            fontWeight: FontWeight.bold,
          ))),
    );
  }
}
