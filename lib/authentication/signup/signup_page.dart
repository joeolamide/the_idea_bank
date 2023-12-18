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
import 'package:the_idea_bank/widgets/custom_snackbar.dart';


class SignupPage extends StatelessWidget {
  final SignupController controller =
      SignupController(); // Create an instance of SignupController

  SignupPage({super.key});

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
              height: 900,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(
                    text: "Get Started",
                    fontWeight: FontWeight.bold,
                  ),
                  const Gap(15),
                  SmallText(
                    text: "Register and come change the world",
                    fontWeight: FontWeight.w500,
                  ),
                  const Gap(3),
                  SmallText(
                    text: "with us.",
                    fontWeight: FontWeight.w500,
                  ),
                  const Gap(80),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      SmallText(text: "Full Name"),
                      const Gap(20),
                      Container(
                        width: containerWidth,
                        child: BoxInputField(
                          controller: TextEditingController(),
                          placeholder: 'John Doe',
                        ),
                      ),
                      const Gap(50),
                      SmallText(text: "Email Address"),
                      const Gap(20),
                      Container(
                        width: containerWidth,
                        child: BoxInputField(
                          controller: TextEditingController(),
                          placeholder: 'E.g emailneeded@gmail.com',
                        ),
                      ),
                      const Gap(50),
                      SmallText(text: "Password"),
                      const Gap(20),
                      Container(
                        width: containerWidth,
                        child: BoxInputField(
                          controller: TextEditingController(),
                          placeholder: 'Eg WitHyOU',
                          password: true,
                          trailing: Icon(Icons.visibility),
                        ),
                      ),

                      const Gap(50),
                      SmallText(text: "Confirm Password"),
                      const Gap(20),
                      Container(
                        width: containerWidth,
                        child: BoxInputField(
                          controller: TextEditingController(),
                          placeholder: 'Eg WitHyOU',
                          password: true,
                          trailing: Icon(Icons.visibility),
                        ),
                      ),

                      const Gap(40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: secondcontainerWidth,
                            child: BoxButton(
                              title: "Sign Up",
                              onTap: (){
                                CustomSnackBar.show(
                                  context,
                                  message: 'Sign up successful',
                                  backgroundColor: Color(0xFFEFFAEE),
                                  borderColor: Color(0xFF2A9428),
                                  iconColor: Color(0xFF2A9428),
                                  closeIconColor: Color(0xFF2A9428),
                                  duration: Duration(seconds: 3),
                                );
                               context.push('/Profile-Page');
                              },
                            ),
                          ),
                        ],
                      ),

                      const Gap(30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SmallText(text: "Already have an account?",),
                          SizedBox(width: 3,),
                          MyTextButton(
                            onTap: () {
                              context.push('/Login-Page');
                            },
                            text: "Login",
                            textColor:
                            Color(0xFF406EFF), // Set the desired text color
                            fontWeight: FontWeight.w800,
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

