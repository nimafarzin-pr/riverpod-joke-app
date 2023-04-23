import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class MyText extends StatelessWidget {
  const MyText({super.key, required this.text, this.color});
  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color ?? AppColors.white),
    );
  }
}
