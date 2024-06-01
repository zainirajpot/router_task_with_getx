import 'package:flutter/material.dart';

class HorizontalLinesWithText extends StatelessWidget {
  final String text;

  const HorizontalLinesWithText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(
          child: Divider(
            color: Colors.black,
            height: 1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            text,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        const Expanded(
          child: Divider(
            color: Colors.black,
            height: 1,
          ),
        ),
      ],
    );
  }
}
