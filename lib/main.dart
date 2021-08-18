import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upahaar_solutions/pages/forgotPasswordPage.dart';
import 'package:upahaar_solutions/pages/loginPage.dart';
import 'package:upahaar_solutions/pages/signUpPage.dart';
import 'package:upahaar_solutions/pages/signUpPageAdditional.dart';
import 'package:upahaar_solutions/pages/welcomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Upahaar Solutions',
      defaultTransition: Transition.fadeIn,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(name: "/", page: ()=>WelcomePage()),
        GetPage(name: "/login", page: ()=>LoginPage()),
        GetPage(name: "/signUp", page: ()=>SignUpPage()),
        GetPage(name: "/signUpSecond", page: ()=>SignUpPageAdditional()),
         GetPage(name: "/forgotPass", page: ()=>ForgotPasswordPage()),
      ],
    );
  }
}

