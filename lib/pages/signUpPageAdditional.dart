import 'package:flutter/material.dart';
import 'package:upahaar_solutions/common/customPainterSignUp.dart';
import 'package:upahaar_solutions/pages/signUpPage.dart';
import 'package:upahaar_solutions/pages/welcomePage.dart';

class SignUpPageAdditional extends StatelessWidget {
  const SignUpPageAdditional({Key? key}) : super(key: key);

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
                    MaterialPageRoute(builder: (context) => SignUpPage()));
              },
              color: Color.fromRGBO(1, 0, 53, 1),
              icon: Icon(Icons.arrow_back_ios),
            ),
          ),
          Positioned(
            top: 90,
            left: 30,
            child: Text(
              'Basic\nInformation',
              style: TextStyle(
                color: Color.fromRGBO(1, 0, 53, 1),
                fontSize: 42,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.6,
              ),
            ),
          ),
          Container(
            child:
                ListView(padding: const EdgeInsets.all(8), children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 34, right: 34, top: 200, bottom: 0),
                    child: TextField(
                      enabled: true,
                      decoration: InputDecoration(
                        labelText: 'Date of Birth',
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
                        labelText: 'Gender',
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
                        labelText: 'Phone Number',
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
                        labelText: 'Permanent Address',
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
                          'Sign Up',
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
                              color: Color.fromRGBO(1, 0, 53, 1),
                            ),
                            onPressed: () {},
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
                              color:
                                  Color.fromRGBO(1, 0, 53, 1).withOpacity(0.8),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ]),
          )
        ],
      ),
    );
  }
}
