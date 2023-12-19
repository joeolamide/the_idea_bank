import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:the_idea_bank/authentication/create_password/create_password_page.dart';
import 'package:the_idea_bank/authentication/landing_page.dart';
import 'package:the_idea_bank/authentication/login/login_page.dart';
import 'package:the_idea_bank/authentication/otp_verification/otp_page.dart';
import 'package:the_idea_bank/authentication/profile/profile_screen.dart';
import 'package:the_idea_bank/authentication/reset_password/reset_password_page.dart';
import 'package:the_idea_bank/authentication/signup/signup_page.dart';


final GoRouter router = GoRouter(
  initialLocation: '/LandingPage',
  routes: [
    GoRoute(
      path: "/LandingPage",
      builder: (context, state) => const LandingPage(),
    ),
    GoRoute(
      path: "/Sign-upPage",
      builder: (context, state) => SignupPage(),
    ),
    GoRoute(
      path: "/Login-Page",
      builder: (context, state) => LoginPage(),

    ),
    GoRoute(
      path: "/ResetPassword-Page",
      builder: (context, state) => ResetPassword(),

    ),
    GoRoute(
      path: "/Profile-Page",
      builder: (context, state) => ProfilePage(),

    ),

    GoRoute(
      path: "/Otp-Page",
      builder: (context, state) => OtpPage(),

    ),

    GoRoute(
      path: "/Create-Password",
      builder: (context, state) => CreatePassword(),

    ),



  ],
);
