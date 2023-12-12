import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class LandingHeader extends StatelessWidget {
  const LandingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    double containerWidth = MediaQuery.of(context).size.width * 0.95;
    return Container(
      width: containerWidth,
      child: Row(
        children: [
          Image.asset(
            "assets/images/logo.png",
            width: 190,
            height: 54,
          ),
          const SizedBox(width: 150),
          const Text(
            "Home",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Circular Std',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
          const SizedBox(width: 30),
          const Text(
            "Value Proposition",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Circular Std',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
          const SizedBox(width: 30),
          const Text(
            "How it works",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Circular Std',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
          const SizedBox(width: 30),
          const Text(
            "Client Testimonial",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Circular Std',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
          const SizedBox(width: 90),
          TextButton(
            onPressed: () {
              context.push('/Sign-upPage');
            },
            child: Text(
              "Get Started",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'Abril Fatface',
                fontWeight: FontWeight.w400,
                height: 0.08,
              ),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
              minimumSize: MaterialStateProperty.all<Size>(
                const Size(50, 50),
              ),
            ),
          )
        ],
      ),
    );
  }
}
