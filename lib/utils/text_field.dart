import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import the services library for LengthLimitingTextInputFormatter
import 'package:the_idea_bank/utils/color.dart';

class BoxInputField extends StatelessWidget {
  final TextEditingController controller;
  final String placeholder;
  final Widget? leading;
  final Widget? trailing;
  final bool password;
  final void Function()? trailingTapped;
  final double? height;
  final void Function(String)? onChanged;
  final int? maxLength;

  final circularBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
  );

  BoxInputField({
    Key? key,
    required this.controller,
    this.placeholder = '',
    this.leading,
    this.trailing,
    this.trailingTapped,
    this.password = false,
    this.height,
    this.onChanged,
    this.maxLength,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(primaryColor: AppColors.kcPrimaryColor),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        maxLength: maxLength,
        maxLengthEnforcement: MaxLengthEnforcement.enforced,
        //inputFormatters: maxLength != null ? [LengthLimitingTextInputFormatter(maxLength)] : null, // Use LengthLimitingTextInputFormatter if maxLength is provided
        style: TextStyle(height: 1),
        obscureText: password,
        decoration: InputDecoration(
          hintText: placeholder,
          contentPadding: EdgeInsets.symmetric(
            vertical: height != null ? (height! - 20) / 2 : 15,
            horizontal: 20,
          ),
          filled: true,
          fillColor: AppColors.kcVeryLightGreyColor,
          prefixIcon: leading,
          suffixIcon: trailing != null
              ? GestureDetector(
            onTap: trailingTapped,
            child: trailing,
          )
              : null,
          border: circularBorder.copyWith(
            borderSide: BorderSide(color: AppColors.kcLightGreyColor),
          ),
          errorBorder: circularBorder.copyWith(
            borderSide: BorderSide(color: Colors.red),
          ),
          focusedBorder: circularBorder.copyWith(
            borderSide: BorderSide(color: AppColors.kcPrimaryColor),
          ),
          enabledBorder: circularBorder.copyWith(
            borderSide: BorderSide(color: AppColors.kcLightGreyColor),
          ),
        ),
      ),
    );
  }
}
