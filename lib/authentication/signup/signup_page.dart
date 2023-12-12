import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:the_idea_bank/utils/values.dart';
import 'package:the_idea_bank/widgets/app_text_form_field.dart';
import 'package:the_idea_bank/widgets/big_text.dart';
import 'package:the_idea_bank/widgets/column_pro.dart';
import 'package:the_idea_bank/widgets/small_text.dart';
import 'package:the_idea_bank/authentication/signup/signup_controller.dart';
import 'package:the_idea_bank/utils/validator.dart';
import 'package:go_router/go_router.dart';


class SignupPage extends StatelessWidget {
  final SignupController controller =
      SignupController(); // Create an instance of SignupController

  SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    double containerWidth = MediaQuery.of(context).size.width * 0.90;

    return Scaffold(
      backgroundColor: Colors.white,
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
                    text: "Get Started",
                    fontWeight: FontWeight.bold,
                  ),
                  const Gap(15),
                  SmallText(
                    text: "Register and come change the world ",
                    fontWeight: FontWeight.w500,
                  ),
                  const Gap(3),
                  SmallText(
                    text: "with us.",
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
              const Gap(60),
              Container(
                width: containerWidth,
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppTextFormField(
                      label: 'Full Name',
                      autofillHints: [AutofillHints.name],
                      hintText: 'e.g John Doe',
                      onSaved: (val) => controller.setName(val!),
                      // The ValueNotifier will automatically update the UI when the value changes
                      onChanged: (val) => controller.setName(val),
                    ),
                    const Gap(30),
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
                    const Gap(30),
                    AppTextFormField(
                      label: 'Confirm Password',
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
                    const Gap(90),
                    ElevatedButton(
                      child: Text('Create account'),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        fixedSize:
                            Size(328, 69), // Set your desired width and height
                      ),
                      onPressed: controller.createAccount,
                    ),
                  ],
                ),
              ),
              const Gap(40),
              Container(
                height:400,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SmallText(text: "Already have an account?"),
                    SizedBox(
                      width: 3,
                    ),
                    GestureDetector(
                      onTap: (){
                        context.push('/Login-Page');
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
