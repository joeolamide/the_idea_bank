import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  Color? color;
  final String text;
  final FontWeight fontWeight;
  SmallText({super.key,
    this.color = const Color(0xFF332d2b),
    required this.text,
    this.fontWeight = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight,
      ),
    );
  }
}
