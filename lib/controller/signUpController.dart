import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upahaar_solutions/controller/validator.dart';

class SignUpController extends GetxController {
  String name;
  String email = '';
  String _errorText;
  String password;
  String confirmPassword;

  final nameController = TextEditingController().obs;
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final confirmPasswordController = TextEditingController().obs;

  String get errorText => _errorText;
 
  
  bool validateData() {
    name = nameController.value.text;
    email = emailController.value.text;
    password = passwordController.value.text;
    confirmPassword = confirmPasswordController.value.text;

      if (!(nameController.value.text.length > 1 &&
        Validator.isFullName(nameController.value.text))) {
      _errorText = 'Please enter your first name.';
      return false;
    } else if (!(Validator.isEmail(emailController.value.text))) {
      _errorText = 'Please enter a valid email.';
      return false;
    } else if (password.length < 6) {
      _errorText = 'Password must be of 6 characters';
      return false;
    }else if (confirmPassword.length < 6) {
      _errorText = 'Confirm Password must be of 6 characters';
      return false;
    }else if (password != confirmPassword) {
      _errorText = 'Password entered is not the same';
      return false;
    }else {
      return true;
    }
  }
}