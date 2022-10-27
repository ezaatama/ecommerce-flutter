import 'package:validators/validators.dart';

class NameValidator {
  static nameValidate(String value) {
    return value.isEmpty ? 'Name must not be empty' : null;
  }
}

class EmailValidator {
  static emailValidate(String value) {
    return !isEmail(value) ? "Please enter valid email" : null;
  }
}

class PasswordValidator {
  static passwordValidate(String value) {
    return value.isEmpty ? 'Password must not be empty' : null;
  }
}

class ConfirmPassValidator {
  static confirmPasswordValidate(String value) {
    return value.isEmpty ? 'Confirm Password must not be empty' : null;
  }
}