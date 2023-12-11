import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FourthColumn extends StatelessWidget {
  FourthColumn({super.key});

  @override
  Widget build(BuildContext context) {
    double containerWidth = MediaQuery.of(context).size.width * 0.85;
    return Padding(
      padding: EdgeInsets.only(left: 20.0),
      child: Container(
        width: containerWidth,
        child:SvgPicture.asset("assets/images/g15.svg",
          width: 700,
          height: 700,
        ),

      ),
    );
  }
}
