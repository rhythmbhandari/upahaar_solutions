import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upahaar_solutions/common/customPainterSignUp.dart';
import 'package:upahaar_solutions/widgets/input_password.dart';
import 'package:upahaar_solutions/widgets/textfield_padding.dart';

class SignUpPage extends StatelessWidget {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  SignUpPage({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SignUpBar(),
          Positioned(
            top: 40,
            left: 4,
            child: IconButton(
              onPressed: () {
                Get.offNamed("/");
              },
              color: Colors.white,
              icon: Icon(Icons.arrow_back_ios),
            ),
          ),
          Container(
              child: Positioned(
            top: 90,
            left: 30,
            child: Text(
              'Create\nAccount',
              style: TextStyle(
                color: Colors.white,
                fontSize: 42,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.6,
              ),
            ),
          )),
          Container(
              child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      left: 34, right: 34, top: 200, bottom: 0),
                  child: TextFieldPadding(
                      name: 'Full Name', controller: fullNameController),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 34, right: 34, bottom: 0),
                  child: TextFieldPadding(
                      name: 'Email', controller: emailController),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 34, right: 34, bottom: 0),
                  child: InputPassword()
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 34, right: 34, bottom: 0),
                  child: TextFieldPadding(
                      name: 'Confirm Password',
                      controller: confirmPasswordController),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 70.0),
                      child: Text(
                        'Next',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          wordSpacing: 2,
                          color: Color.fromRGBO(1, 0, 53, 1).withOpacity(0.8),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: ConstrainedBox(
                        constraints:
                            BoxConstraints.tightFor(width: 80, height: 80),
                        child: ElevatedButton(
                          child: Icon(
                            Icons.arrow_forward,
                            size: 28,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Get.toNamed("/signUpSecond");
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(255, 110, 78, 1),
                            shape: CircleBorder(),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            wordSpacing: 2,
                            decoration: TextDecoration.underline,
                            fontSize: 16,
                            color: Color.fromRGBO(1, 0, 53, 1).withOpacity(0.8),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
