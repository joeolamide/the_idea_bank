import 'package:flutter/material.dart';

class SignupController {
  final formKey = GlobalKey<FormState>();
  final ValueNotifier<bool> agreedToTerms = ValueNotifier<bool>(false);
  final ValueNotifier<String> nameNotifier = ValueNotifier<String>('');
  final ValueNotifier<bool> hidePassword = ValueNotifier<bool>(true);
  late ValueNotifier<String> email = ValueNotifier<String>('');
  late String password;

  void hidePasswordPressed() => hidePassword.value = !hidePassword.value;

  void onCheckboxChanged(bool? value) {
    agreedToTerms.value = value!;
  }

  String setName(String name) {
    nameNotifier.value = name;
    return name;
  }

  String? updateEmail(String newEmail) {
    email.value = newEmail.trim();
  }

  String? updatePassword(String password) {
    if (password.length < 8) {
      return "Password is to short";
    } else {
      return null;
    }
  }

  void createAccount() {
    FocusManager.instance.primaryFocus?.unfocus();

    final form = formKey.currentState!;
    if (form.validate()) {
      form.save();
    }
  }


// Add more methods or properties as needed for your signup logic


}