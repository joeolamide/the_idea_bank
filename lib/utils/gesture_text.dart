import 'package:flutter/material.dart';
import 'package:the_idea_bank/widgets/small_text.dart';

class MyTextButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String text;
  final Color textColor;
  final FontWeight fontWeight;

  const MyTextButton({
    Key? key,
    this.onTap,
    required this.text,
    this.textColor = const Color(0xFF406EFF),
    this.fontWeight = FontWeight.w800,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SmallText(
        text: text,
        color: textColor, // Set the text color
        fontWeight: fontWeight,
      ),
    );
  }
}
