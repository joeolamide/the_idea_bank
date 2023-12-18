import 'package:flutter/material.dart';
import 'package:the_idea_bank/utils/color.dart';
import 'package:the_idea_bank/utils/text_style.dart';



class BoxButton extends StatelessWidget {
  final String title;
  final bool disabled;
  final bool busy;
  final void Function()? onTap;
  final bool outline;
  final Widget? leading;

  const BoxButton({
    Key? key,
    required this.title,
    this.disabled = false,
    this.busy = false,
    this.onTap,
    this.leading,
  })  : outline = false,
        super(key: key);

  const BoxButton.outline({
    required this.title,
    this.onTap,
    this.leading,
  })  : disabled = false,
        busy = false,
        outline = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 350),
        width: double.infinity,
        height: 48,
        alignment: Alignment.center,
        decoration: !outline
            ? BoxDecoration(
          color: !disabled ? AppColors.Color_active_blue : AppColors.Color_inactive_blue,
          borderRadius: BorderRadius.circular(8),
        )
            : BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: AppColors.Color_active_blue,
              width: 1,
            )),
        child: !busy
            ? Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (leading != null) leading!,
            if (leading != null) SizedBox(width: 5),
            Text(
              title,
              style: AppStyle.M_black_text.copyWith(
                fontWeight: !outline ? FontWeight.bold : FontWeight.w400,
                color: !outline ? Colors.white : AppColors.Color_active_blue,
              ),
            ),
          ],
        )
            : CircularProgressIndicator(
          strokeWidth: 8,
          valueColor: AlwaysStoppedAnimation(Colors.white),
        ),
      ),
    );
  }
}