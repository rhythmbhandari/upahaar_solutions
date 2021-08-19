import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upahaar_solutions/common/customPainterLogin.dart';
import 'package:upahaar_solutions/pages/forgotPasswordPage.dart';
import 'package:upahaar_solutions/widgets/input_password.dart';
import 'package:upahaar_solutions/widgets/textfield_box.dart';

final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

class LoginPage extends StatelessWidget {
  LoginPage({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        LoginBar(),
        buildLoginBackButton(),
        buildWelcomeBackText(),
        buildLoginPageBody(context)
      ],
    ));
  }
}

Widget buildLoginBackButton() {
  return Positioned(
    top: 40,
    left: 4,
    child: IconButton(
      onPressed: () {
        Get.offNamed("/");
      },
      color: Colors.white,
      icon: Icon(Icons.arrow_back_ios),
    ),
  );
}

Widget buildWelcomeBackText() {
  return Positioned(
    top: Get.height * 0.27,
    left: 16,
    child: Text(
      'Welcome\nBack',
      style: TextStyle(
        color: Colors.white,
        fontSize: 42,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.6,
      ),
    ),
  );
}

Widget buildLoginPageBody(context) {
  return Container(
      child: SingleChildScrollView(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        SizedBox(
          height: Get.height * 0.55,
        ),
        buildEmailTextArea(),
        buildPasswordTextArea(),
        buildLoginRow(),
        buildLoginBottomRow()
      ],
    ),
  ));
}

Widget buildEmailTextArea() {
  return TextFieldBox(
      name: 'Email',
      controller: emailController,
      inputType: TextInputType.emailAddress);
}

Widget buildPasswordTextArea() {
  return InputPassword(name: 'Password', controller: passwordController);
}

Widget buildLoginRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    mainAxisSize: MainAxisSize.max,
    children: <Widget>[buildLoginRowText(), buildLoginRowButton()],
  );
}

Widget buildLoginRowText() {
  return Padding(
    padding: const EdgeInsets.only(right: 44.0),
    child: Text(
      'Login',
      style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w700,
          wordSpacing: 2,
          color: Color.fromRGBO(1, 0, 53, 1)),
    ),
  );
}

Widget buildLoginRowButton() {
  return Padding(
    padding: const EdgeInsets.only(top: 10),
    child: ConstrainedBox(
      constraints: BoxConstraints.tightFor(width: 80, height: 80),
      child: ElevatedButton(
        child: Icon(
          Icons.arrow_forward,
          size: 28,
          color: Colors.white,
        ),
        onPressed: () {
          print("hehe");
          Get.offNamed("/homePage");
        },
        style: ElevatedButton.styleFrom(
          primary: Color.fromRGBO(255, 110, 78, 1),
          shape: CircleBorder(),
        ),
      ),
    ),
  );
}

Widget buildLoginBottomRow() {
  return Padding(
    padding: const EdgeInsets.only(top: 100.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Text(
            'Sign up',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              wordSpacing: 2,
              decoration: TextDecoration.underline,
              fontSize: 16,
              color: Color.fromRGBO(1, 0, 53, 1),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.toNamed("forgotPass");
          },
          child: Text(
          'Forgot Password',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            wordSpacing: 2,
            decoration: TextDecoration.underline,
            fontSize: 15,
            color: Color.fromRGBO(1, 0, 53, 1),
          ),
        ),
        ),
        
      ],
    ),
  );
}
