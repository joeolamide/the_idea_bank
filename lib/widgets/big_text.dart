import 'package:flutter/material.dart';
import 'package:the_idea_bank/utils/color.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  final FontWeight fontWeight;
   BigText({super.key,
    this.color = AppColors.Big_purple_textColor ,
    required this.text,
    this.fontWeight = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontFamily: 'Circular Std',
        fontSize: 40,
        height: 1.5,
      ),
    );
  }
}
