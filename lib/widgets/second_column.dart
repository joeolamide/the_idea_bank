import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:the_idea_bank/utils/color.dart';
import 'package:the_idea_bank/widgets/big_text.dart';
import 'package:the_idea_bank/widgets/small_text.dart';

class SecondColumn extends StatelessWidget {
  const SecondColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 100.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Image.asset(
                "assets/images/r3.png",
                width: 190,
                height: 90,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      BigText(text: "Leverage the"),
                      SizedBox(width: 1.5),
                      BigText(text: "Power Of All", fontWeight: FontWeight.w700,),
                    ],
                  ),
                  Gap(3),
                  Text(
                    "To Bring All Our Ideas to Life",
                    style: TextStyle(
                      fontSize: 32,
                      height: 2,
                      color: AppColors.black_textColor,
                    ),
                  ),
                  Gap(53),
                  TextButton(
                    onPressed: () {
                      print("you are tapped");
                    },
                    child: Text(
                      "Get Started",
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
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                      minimumSize: MaterialStateProperty.all<Size>(
                        const Size(15, 35),
                      ),
                    ),
                  )
                ],
              ),
              Image.asset(
                "assets/images/r2.png",
                width: 190,
                height: 90,
              ),
            ],
          ),
          const Gap(20),
          Row(
            children: [
              Image.asset(
                "assets/images/r4.png",
                width: 122,
                height: 122,
              ),
              SizedBox(
                width: 35,
              ),
              Image.asset(
                "assets/images/r1.png",
                width: 520,
                height: 127,
              ),
              SizedBox(
                width: 20,
              ),
              Image.asset(
                "assets/images/r5.png",
                width: 222,
                height: 122,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
