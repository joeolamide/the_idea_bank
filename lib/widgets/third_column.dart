import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:the_idea_bank/utils/color.dart';
import 'package:the_idea_bank/widgets/big_text.dart';
import 'package:the_idea_bank/widgets/small_text.dart';

class ThirdColumn extends StatelessWidget {
  const ThirdColumn({super.key});

  @override
  Widget build(BuildContext context) {
    double containerWidth = MediaQuery.of(context).size.width * 0.85;
    return Column(
      children: [
        Container(
          width: containerWidth,
          decoration: BoxDecoration(
            color: Color(0xFFF4EEFF),
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(
                    right: 180.0,
                    bottom:
                        250.0), // Add 180 units of space to the right and 100 units to the bottom of the image
                child: Image.asset(
                  "assets/images/r21.png",
                  width: 250,
                  height: 250,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    bottom:
                        200.0), // Adjust top padding to shift text closer to the top
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        BigText(text: "Value",),
                        SizedBox(
                          width: 6.0,
                        ),
                        BigText(text: "Propositions", fontWeight: FontWeight.w700,),
                      ],
                    ),
                    const Gap(50),
                    SmallText(
                        text:
                            "Idea, they say - rule the world, but what good is an idea If it remains"),
                    const Gap(3),
                    SmallText(text: "just that, an idea?"),
                    const Gap(10),
                    SmallText(
                        text: "The Problem;", fontWeight: FontWeight.bold),
                    const Gap(7),
                    SmallText(
                        text:
                            "*    Most human ideas remain abstract and stored away in the mind,"),
                    const Gap(2),
                    SmallText(text: "     never seeing the light of day"),
                    const Gap(8),
                    SmallText(
                        text:
                            "*    Potential/keen investors don’t have easy, unfettered access to the"),
                    const Gap(2),
                    SmallText(text: "     most viable ideas."),
                    const Gap(8),
                    SmallText(
                        text:
                            "*    Most potential entrepreneurs do not have a reliable channel, "),
                    const Gap(2),
                    SmallText(
                        text:
                            "     partnership, mentorship and/or sponsorship to grow and nurture,"),
                    const Gap(2),
                    SmallText(text: "     their business idea."),
                    const Gap(8),
                    SmallText(
                        text:
                            "*    Individuals tasked with innovation across industries are too bus,"),
                    const Gap(2),
                    SmallText(text: "     just trying to get through the day."),
                    const Gap(35),
                    SmallText(
                        text:
                            "The Idea Bank (TIB) provides users with an empowering atmosphere"),
                    const Gap(2),
                    SmallText(
                        text:
                            "where ideas can be securely nurtured, while being transformed from "),
                    const Gap(2),
                    SmallText(
                        text:
                            "abstraction to reality. It gives users the ability to securely buy, sell, or"),
                    const Gap(2),
                    SmallText(
                        text:
                            "share ideas. This ultimately gives every idea a chance to not only exist"),
                    const Gap(2),
                    SmallText(
                        text:
                            "but to thrive and make our world a better place."),
                    const Gap(35),
                    SmallText(
                        text:
                            "Simply put, the Idea Bank (TIB) is an enabling platform where ideas"),
                    const Gap(5),
                    SmallText(text: "come to life."),
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
