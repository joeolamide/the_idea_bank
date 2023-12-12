import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:the_idea_bank/authentication/landing_page.dart';
import 'package:the_idea_bank/authentication/login/login_page.dart';
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
  ],
);
