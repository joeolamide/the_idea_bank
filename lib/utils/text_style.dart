import 'package:flutter/material.dart';
import 'package:the_idea_bank/utils/color.dart';


class AppStyle{
  static TextStyle M_black_text =
  TextStyle(
    fontSize: 16,
    color: Colors.black,
    fontFamily: 'Circular Std',
    fontWeight: FontWeight.w700,
    height: 0,
  );


  static TextStyle S_black_text =
  TextStyle(
    color: Color(0xFF3F3E3E),
    fontSize: 16,
    fontFamily: 'Circular Std',
    fontWeight: FontWeight.w500,
    height: 0.09,
  );

  static TextStyle B_black_text =
  TextStyle(
    color: Colors.black,
    fontSize: 32,
    fontFamily: 'Circular Std',
    fontWeight: FontWeight.w500,
    height: 0,
  );

  static TextStyle M_blue_text =
  TextStyle(
    color: Color(0xFF406EFF),
    fontSize: 14,
    fontFamily: 'Circular Std',
    fontWeight: FontWeight.w700,
    height: 0.10,
  );


  static TextStyle S_white_text =
        TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontFamily: 'Abril Fatface',
          fontWeight: FontWeight.w400,
          height: 0.08,
      );

  static TextStyle B_purple_text =
        TextStyle(
          color: AppColors.Big_purple_textColor,
          fontWeight: FontWeight.w500,
          fontFamily: 'Circular Std',
          fontSize: 40,
          height: 1.5,
      );

  static TextStyle BB_purple_text =
      TextStyle(
        color:  AppColors.Big_purple_textColor,
        fontWeight: FontWeight.w700,
        fontFamily: 'Circular Std',
        fontSize: 40,
        height: 1.5,
      );
  }