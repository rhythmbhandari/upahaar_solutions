import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upahaar_solutions/common/customPainterWelcome.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[WelcomeBar(), buildWelcomePage()],
    ));
  }
}

Widget buildWelcomePage() {
  return Center(
    child: Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        buildSignUpButton(),
        buildLoginButton(),
        buildWelcomePageButton()
      ],
    ),
  );
}

Widget buildSignUpButton() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 24.0),
    child: MaterialButton(
      onPressed: () {
        Get.toNamed("/signUp");
      },
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(60),
          side: BorderSide(color: Color.fromRGBO(255, 110, 78, 1))),
      elevation: 0,
      color: Color.fromRGBO(255, 110, 78, 1),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
        child: Text(
          'Sign Up',
          style: TextStyle(
            color: Colors.black.withOpacity(0.7),
            fontSize: 18,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.2,
          ),
        ),
      ),
    ),
  );
}

Widget buildLoginButton() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20.0),
    child: MaterialButton(
      onPressed: () {
        Get.toNamed("/login");
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(60),
      ),
      elevation: 6,
      color: Color.fromRGBO(1, 0, 53, 1),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
        child: Text(
          'Login',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.2,
          ),
        ),
      ),
    ),
  );
}

Widget buildWelcomePageButton() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20.0, top: 60),
    child: GestureDetector(
          onTap: () {
            Get.toNamed("forgotPass");
          },
          child: Text(
      'Forgot password?',
      style: TextStyle(
        color: Colors.black87,
        fontWeight: FontWeight.w600,
        decoration: TextDecoration.underline,
      ),
    ),
  ));
}
