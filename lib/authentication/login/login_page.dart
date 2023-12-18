import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:the_idea_bank/authentication/login/login_controller.dart';
import 'package:the_idea_bank/utils/buttons.dart';
import 'package:the_idea_bank/utils/text_field.dart';
import 'package:the_idea_bank/utils/validator.dart';
import 'package:the_idea_bank/widgets/app_text_form_field.dart';
import 'package:the_idea_bank/widgets/big_text.dart';
import 'package:the_idea_bank/widgets/column_pro.dart';
import 'package:the_idea_bank/widgets/small_text.dart';
import 'package:the_idea_bank/utils/gesture_text.dart';

class LoginPage extends StatelessWidget {
  final LoginController controller = LoginController();
  //final TextEditingController emailText = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    double containerWidth = MediaQuery.of(context).size.width * 0.85;
    double secondcontainerWidth = MediaQuery.of(context).size.width * 0.35;
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 120.0),
            child: Container(
              height: 700,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BigText(
                        text: "Login",
                        fontWeight: FontWeight.bold,
                      ),
                      const Gap(15),
                      SmallText(
                        text: "Sign in to gain access to submit your",
                        fontWeight: FontWeight.w500,
                      ),
                      const Gap(3),
                      SmallText(
                        text: "new ideas.",
                        fontWeight: FontWeight.w500,
                      ),
                    ],
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
                      const Gap(40),
                      MyTextButton(
                        onTap: () {
                          context.push('/ResetPassword-Page');
                        },
                        text: "Forgot Password",
                        textColor:
                            Color(0xFF406EFF), // Set the desired text color
                        fontWeight: FontWeight.w800,
                      ),
                    ],
                  ),
                  const Gap(40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: secondcontainerWidth,
                        child: BoxButton(
                          title: "Login",
                          onTap: (){
                            print("On our way to the vault.");
                          },
                        ),
                      ),
                    ],
                  ),
                  const Gap(30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    SmallText(text: "Create an account?",),
                      SizedBox(width: 3,),
                      MyTextButton(
                        onTap: () {
                          context.push('/Sign-upPage');
                        },
                        text: "Sign up",
                        textColor:
                        Color(0xFF406EFF), // Set the desired text color
                        fontWeight: FontWeight.w800,
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



