import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:the_idea_bank/utils/buttons.dart';
import 'package:the_idea_bank/utils/text_field.dart';
import 'package:the_idea_bank/widgets/big_text.dart';
import 'package:the_idea_bank/widgets/small_text.dart';

class CreatePassword extends StatelessWidget {
   CreatePassword({super.key});

  @override

  Widget build(BuildContext context) {
    double containerWidth = MediaQuery.of(context).size.width * 0.80;
    double secondcontainerWidth = MediaQuery.of(context).size.width * 0.25;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 120.0),
            child: Container(
              width: containerWidth,
              height: 600,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(
                    text: "Create Password",
                    fontWeight: FontWeight.bold,
                  ),
                  const Gap(15),
                  SmallText(
                    text: "Create a new password you can ",
                    fontWeight: FontWeight.w500,
                  ),
                  const Gap(3),
                  SmallText(
                    text: "remember",
                    fontWeight: FontWeight.w500,
                  ),
                  const Gap(80),
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
                          title: "Create",
                          onTap: (){
                            // print("Background check");
                            context.push('/Create-Password');
                          },
                        ),
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
