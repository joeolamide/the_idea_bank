import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:the_idea_bank/utils/color.dart';
import 'package:the_idea_bank/widgets/fifth_column.dart';
import 'package:the_idea_bank/widgets/fourth_column.dart';
import 'package:the_idea_bank/widgets/fourth_column.dart';
import 'package:the_idea_bank/widgets/landing_header.dart';
import 'package:the_idea_bank/widgets/second_column.dart';
import 'package:the_idea_bank/widgets/seventh_column.dart';
import 'package:the_idea_bank/widgets/sixth_column.dart';
import 'package:the_idea_bank/widgets/third_column.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const Gap(5),
          const LandingHeader(),
          const Gap(100),
          const SecondColumn(),
          const Gap(50),
          const ThirdColumn(),
          const Gap(10),
          //const FourthColumn(),
          FourthColumn(),
          const Gap(20),
          const FifthColumn(),
          const Gap(50),
          const SixthColumn(),
          const SeventhColumn(),

        ],
      ),
    );
  }
}
