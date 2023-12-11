import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_idea_bank/utils/color.dart';

class SeventhColumn extends StatelessWidget {
  const SeventhColumn({super.key});

  @override
  Widget build(BuildContext context) {
    double containerWidth = MediaQuery.of(context).size.width * 0.85;
    return Column(
      children: [
        Container(
          width: containerWidth,
          height: 75,
          decoration: BoxDecoration(
            color: AppColors.Big_purple_textColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                "assets/images/logo.png",
                width: 190,
                height: 54,
              ),
              Text(
                'Contact Us @ emailneeded@gmail.com',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Circular Std',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              Image.asset("assets/images/f114.png"),

              // Row(
              //   children: [
              //     SvgPicture.asset("assets/images/c.svg",
              //     width: 100,
              //       height: 100,
              //     ),
              //     Text("All rights reserved 2022",
              //       style: TextStyle(
              //         color: Colors.white,
              //         fontSize: 16,
              //         fontFamily: 'Circular Std',
              //         fontWeight: FontWeight.w400,
              //         height: 0,
              //       ),
              //     ),
              //   ],
              // ),
              // SvgPicture.asset(
              //   "assets/images/f114.svg",
              //   color: Colors.white,
              //   width: 400,
              //   height: 400,
              // ),
            ],
          ),
        )
      ],
    );
  }
}
