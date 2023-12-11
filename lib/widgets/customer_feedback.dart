import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomerFeedback extends StatelessWidget {
  final String firstText;
  final String secondText;
  final String thirdText;
  final Image myImage;
  final String purpleText;

  CustomerFeedback({
    super.key,
    required this.firstText,
    required this.secondText,
    required this.thirdText,
    required this.myImage,
    required this.purpleText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          const Gap(60),
          Text(
            firstText,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Circular Std',
              fontWeight: FontWeight.w400,
              height: 0.08,
            ),
          ),
          const Gap(20),
          Text(
            secondText,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Circular Std',
              fontWeight: FontWeight.w400,
              height: 0.08,
            ),
          ),
          const Gap(20),
          Text(
            thirdText,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Circular Std',
              fontWeight: FontWeight.w400,
              height: 0.08,
            ),
          ),
          const Gap(50),
          Padding(
            padding:  EdgeInsets.all(40.0),
            child: Row(
              children: [
                SizedBox(
                    width: 52,
                    height: 55,
                    child: myImage,
                ),
                SizedBox(width: 8,),
                Text(purpleText,
                style: TextStyle(
                  color: Color(0xFF260060),
                  fontSize: 16,
                  fontFamily: 'Circular Std',
                  fontWeight: FontWeight.w700,
                  height: 0.08,
                ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
