import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:the_idea_bank/utils/buttons.dart';
import 'package:the_idea_bank/utils/gesture_text.dart';
import 'package:the_idea_bank/widgets/big_text.dart';
import 'package:the_idea_bank/widgets/small_text.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpPage extends StatelessWidget {
  OtpPage({super.key});
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double containerWidth = MediaQuery.of(context).size.width * 0.55;
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
                    text: "Enter OTP",
                    fontWeight: FontWeight.bold,
                  ),
                  const Gap(15),
                  SmallText(
                    text: "we’ve sent an OTP to ",
                    fontWeight: FontWeight.w500,
                  ),
                  const Gap(3),
                  SmallText(
                    text: "emailneeded@gmail.com.",
                    fontWeight: FontWeight.w500,
                  ),
                  const Gap(80),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 24),
                        child: PinCodeTextField(
                          appContext: context,
                          controller: controller,
                          length: 4,
                          cursorHeight: 19,
                          enableActiveFill: true,
                          textStyle: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                          pinTheme: PinTheme(
                            shape: PinCodeFieldShape.box,
                                fieldWidth: 80,
                            inactiveColor: Colors.blueGrey,
                            selectedColor: Colors.lightBlue,
                            activeColor: Colors.blue,
                            selectedFillColor: Colors.blue,
                            inactiveFillColor: Colors.white,
                            borderWidth: 1,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          onChanged: ((value){
                            print(value);
                          }),
                        ),

                      ),
                    ],
                  ),
                  const Gap(100),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: secondcontainerWidth,
                        child: BoxButton(
                          title: "Verify Otp",
                          onTap: (){
                           // print("Background check");
                            context.push('/Create-Password');
                          },
                        ),
                      ),
                    ],
                  ),
                  const Gap(50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SmallText(text: "Didn’t get an OTP?",),
                      SizedBox(width: 3,),
                      MyTextButton(
                        onTap: () {
                          //context.push('/Login-Page');
                        },
                        text: "Resend",
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
