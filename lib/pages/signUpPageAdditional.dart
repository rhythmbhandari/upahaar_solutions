import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upahaar_solutions/common/customPainterSignUp.dart';
import 'package:upahaar_solutions/widgets/textfield_box.dart';

class SignUpPageAdditional extends StatelessWidget {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  SignUpPageAdditional({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SizedBox.expand(child: SignUpBar(),),
          Positioned(
            top: 40,
            left: 4,
            child: IconButton(
              onPressed: () {
                Get.offNamed("/");
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
                  SizedBox(
                  height:  Get.height * 0.27,
                ),
                  TextFieldBox(
                      name: 'Date of Birth', controller: dobController, inputType: TextInputType.datetime),
                  TextFieldBox(name: 'Gender', controller: genderController, inputType: TextInputType.name),
                  TextFieldBox(
                      name: 'Phone Number', controller: phoneController, inputType: TextInputType.number),
                  TextFieldBox(
                      name: 'Permanent Address', controller: addressController, inputType: TextInputType.name),
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
                            onPressed: () {
                              Get.offNamed("/");
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
