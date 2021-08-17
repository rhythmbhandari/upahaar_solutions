import 'package:flutter/material.dart';
import 'package:upahaar_solutions/common/customPainterSignUp.dart';
import 'package:upahaar_solutions/pages/signUpPageAdditional.dart';
import 'package:upahaar_solutions/pages/welcomePage.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WelcomePage()));
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
                  child: TextField(
                    enabled: true,
                    decoration: InputDecoration(
                      labelText: 'Full Name',
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Color.fromRGBO(1, 0, 53, 1).withOpacity(0.8),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 34, right: 34, bottom: 0),
                  child: TextField(
                    enabled: true,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Color.fromRGBO(1, 0, 53, 1).withOpacity(0.8),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 34, right: 34, bottom: 0),
                  child: TextField(
                    enabled: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Color.fromRGBO(1, 0, 53, 1).withOpacity(0.8),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 34, right: 34, bottom: 0),
                  child: TextField(
                    enabled: true,
                    decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Color.fromRGBO(1, 0, 53, 1).withOpacity(0.8),
                      ),
                    ),
                  ),
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUpPageAdditional()));
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
