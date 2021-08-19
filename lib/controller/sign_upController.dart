import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  TextEditingController emailController, passwordController, confirmPasswordController;
  var email = '';
  var password = '';
  var confirmPassword = '';
  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
  }

  String validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "Provide valid Email";
    }
    return null;
  }

  String validatePassword(String value) {
    if (value.length < 6) {
      return "Password must be of 6 characters";
    }
    return null;
  }

  String validateConfirmPassword(String value) {
    if (value.length < 6) {
      return "Password must be of 6 characters";
    }
    return null;
  }

  void checkLogin() {
    final isValid = loginFormKey.currentState.validate();
    if (!isValid) {
      return;
    }
    loginFormKey.currentState.save();
  }
}
