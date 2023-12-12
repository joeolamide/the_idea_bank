class Validator {

  static String? isEmail(String? value) {
    // Your email validation logic here
    if (value == null || value.isEmpty) {
      return 'Email is required';
    } else if (!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$').hasMatch(value)) {
      return 'Enter a valid email address';
    }
    return null; // Validation passed
  }

  static String? isPassword(String? value) {
    // Your password validation logic here
    if (value == null || value.isEmpty) {
      return 'Password is required';
    } else if (value.length < 8) {
      return 'Password must be at least 8 characters';
    }
    return null; // Validation passed
  }


}