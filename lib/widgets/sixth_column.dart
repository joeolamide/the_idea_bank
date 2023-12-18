import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:the_idea_bank/utils/color.dart';
import 'package:the_idea_bank/widgets/big_text.dart';
import 'package:the_idea_bank/widgets/customer_feedback.dart';
import 'package:the_idea_bank/widgets/small_text.dart';

class SixthColumn extends StatelessWidget {
  const SixthColumn({super.key});

  @override
  Widget build(BuildContext context) {
    double containerWidth = MediaQuery.of(context).size.width * 0.95;
    return Column(
      children: [
        Container(
          width: containerWidth,
          height: 750,
          decoration: BoxDecoration(
            color: AppColors.cream_color,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            children: [
              const Gap(170),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BigText(text: "What Our"),
                  SizedBox(
                    width: 8,
                  ),
                  BigText(
                    text: "Customers Say",
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              const Gap(20),
              SmallText(text: "Our Clients make what we do worthwhile. Here are a select few…"),
              const Gap(80),
              Padding(
                padding: EdgeInsets.only(right: 80.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomerFeedback(
                      firstText: "“It’s truly unbelievable that an App can have ",
                      secondText: "this much value. TIB has given me hope that all",
                      thirdText: "my dreams can come true”.",
                      myImage: Image.asset("assets/images/r9.png",),
                      purpleText: "Mohammed Bihani",
                    ),
                    const SizedBox(width: 28),

                    CustomerFeedback(
                      firstText: "“The Idea Bank is an era-defining platform. ",
                      secondText: "They’re really trying to change the world and ",
                      thirdText: "Its great to witness”.",
                      myImage: Image.asset("assets/images/r92.png",),
                      purpleText: "Brian Ashikodi",
                    ),

                  ],
                ),
              ),

            ],
          ),
        ),


      ],
    );
  }
}
