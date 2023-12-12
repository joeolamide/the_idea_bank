import 'package:flutter/material.dart';


class LoginController{
final formKey = GlobalKey<FormState>();
final ValueNotifier<bool> hidePassword = ValueNotifier<bool>(true);
late ValueNotifier<String> email = ValueNotifier<String>('');
TextEditingController emailText = TextEditingController();
TextEditingController passText = TextEditingController();




String? updatePassword(String password) {
  if (password.length < 8) {
    return "Password is to short";
  } else {
    return null;
  }
}
String? updateEmail(String newEmail) {
  email.value = newEmail.trim();
}



void hidePasswordPressed() => hidePassword.value = !hidePassword.value;
// void onSignupTap() {
//   // go to sign up screen.
//
// }

}