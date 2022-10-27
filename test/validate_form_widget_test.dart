import 'dart:async';
import 'package:brand_marketplace_app/utils/validated_form.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Register and Login", () {

    //empty email
    test('Empty or wrong input email', () {
      var result = EmailValidator.emailValidate('');
      expect(result, 'Please enter valid email');
    });

    //empty name
    test('Empty input name', () {
      var result = NameValidator.nameValidate('');
      expect(result, 'Name must not be empty');
    });

    //empty password
    test('Empty input password', () {
      var result = PasswordValidator.passwordValidate('');
      expect(result, 'Password must not be empty');
    });

    //empty confirm password
    test('Empty input confirm password', () {
      var result = ConfirmPassValidator.confirmPasswordValidate('');
      expect(result, 'Confirm Password must not be empty');
    });

  });
}