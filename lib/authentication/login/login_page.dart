import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:the_idea_bank/authentication/login/login_controller.dart';
import 'package:the_idea_bank/utils/validator.dart';
import 'package:the_idea_bank/widgets/app_text_form_field.dart';
import 'package:the_idea_bank/widgets/big_text.dart';
import 'package:the_idea_bank/widgets/column_pro.dart';
import 'package:the_idea_bank/widgets/small_text.dart';

class LoginPage extends StatelessWidget {
  final LoginController controller = LoginController();
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    double containerWidth = MediaQuery.of(context).size.width * 0.90;
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: controller.formKey,
          child: FlexibleScrollViewColumn(
            padding: EdgeInsets.only(left: 120.0),
            children: [
              const Gap(20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
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
              const Gap(60),
              Column(
                children: [
                  Container(
                    width: containerWidth,
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppTextFormField(
                          label: 'Email Address',
                          autofillHints: [AutofillHints.email],
                          hintText: 'e.g emailneeded@gmail.com',
                          onSaved: (val) => controller
                              .updateEmail(val!.trim()), // Use updateEmail method
                          validator: Validator.isEmail,
                        ),
                        const Gap(30),
                        AppTextFormField(
                          label: 'Password',
                          autofillHints: [AutofillHints.password],
                          hintText: 'Eg WitHyOU',
                          obscureText: controller.hidePassword.value,
                          validator: Validator.isPassword,
                          onSaved: (val) => controller.updatePassword(val!.trim()),
                          suffixIcon: IconButton(
                            icon: controller.hidePassword.value
                                ? Icon(Icons.visibility_off)
                                : Icon(Icons.remove_red_eye),
                            onPressed: controller.hidePasswordPressed,
                          ),
                        ),
                        const Gap(35),
                        GestureDetector(
                          onTap: () {},
                          child: SmallText(
                            text: "Forgot Password",
                            color: Color(0xFF406EFF),
                            fontWeight: FontWeight.w800,
                          ),
                        ),

                      ],
                    ),
                  ),
                  const Gap(50),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        child: Text('Login'),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          fixedSize:
                          Size(328, 69), // Set your desired width and height
                        ),
                        onPressed: //dont forget to work on this again.
                            () {
                          //controller.createAccount
                        },
                      ),
                    ],
                  ),
                ],
              ),
              const Gap(40),
              Container(
                height:400,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SmallText(text: "Create an account?"),
                    SizedBox(
                      width: 3,
                    ),
                    GestureDetector(
                      onTap: (){
                        context.push('/Sign-upPage');
                      },
                      child: SmallText(
                        text: "Login",
                        color: Colors.blue,

                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
