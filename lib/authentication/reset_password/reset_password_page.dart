import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:the_idea_bank/utils/buttons.dart';
import 'package:the_idea_bank/utils/gesture_text.dart';
import 'package:the_idea_bank/utils/text_field.dart';
import 'package:the_idea_bank/utils/values.dart';
import 'package:the_idea_bank/widgets/app_text_form_field.dart';
import 'package:the_idea_bank/widgets/big_text.dart';
import 'package:the_idea_bank/widgets/column_pro.dart';
import 'package:the_idea_bank/widgets/small_text.dart';
import 'package:the_idea_bank/authentication/signup/signup_controller.dart';
import 'package:the_idea_bank/utils/validator.dart';
import 'package:go_router/go_router.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    double containerWidth = MediaQuery.of(context).size.width * 0.85;
    double secondcontainerWidth = MediaQuery.of(context).size.width * 0.35;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 120.0),
            child: Container(
              height: 600,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(
                    text: "Reset Password",
                    fontWeight: FontWeight.bold,
                  ),
                  const Gap(15),
                  SmallText(
                    text: "Enter your email address so that we can ",
                    fontWeight: FontWeight.w500,
                  ),
                  const Gap(3),
                  SmallText(
                    text: "help you recover your password.",
                    fontWeight: FontWeight.w500,
                  ),
                  const Gap(80),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SmallText(text: "Email Address"),
                      const Gap(20),
                      Container(
                        width: containerWidth,
                        child: BoxInputField(
                          controller: TextEditingController(),
                          placeholder: 'E.g emailneeded@gmail.com',
                        ),
                      ),
                      const Gap(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: secondcontainerWidth,
                            child: BoxButton(
                              title: "Submit",
                              onTap: (){
                                context.push('/Otp-Page');
                              },
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

