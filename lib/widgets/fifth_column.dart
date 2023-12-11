import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:the_idea_bank/utils/color.dart';
import 'package:the_idea_bank/widgets/big_text.dart';
import 'package:the_idea_bank/widgets/small_text.dart';

class FifthColumn extends StatelessWidget {
  const FifthColumn({super.key});

  @override
  Widget build(BuildContext context) {
    double containerWidth = MediaQuery.of(context).size.width * 0.85;
    return Column(
      children: [
        Container(
          width: containerWidth,
          height: 600,
          decoration: BoxDecoration(
              color: AppColors.container_bg_color,
              borderRadius: BorderRadius.circular(20.0),),
          child: Column(
            children: [
              const Gap(170),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BigText(text: "Access"),
                  SizedBox(
                    width: 5,
                  ),
                  BigText(
                    text: "The Vault",
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              const Gap(40),
              SmallText(
                  text:
                      "Explore the true power of the Idea Bank. The TIB Vault gives you access to premium"),
              SmallText(
                  text: "and enterprise-grade ideas, features, and services."),
              const Gap(30),
              TextButton(
                onPressed: () {
                  print("you are tapped");
                },
                child: Text(
                  "Access",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Abril Fatface',
                    fontWeight: FontWeight.w400,
                    height: 0.08,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  minimumSize: MaterialStateProperty.all<Size>(
                    const Size(205, 55),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
