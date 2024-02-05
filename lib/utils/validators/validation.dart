class UIIIValidator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'NRP/Email is required';
    }
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
  }
}
