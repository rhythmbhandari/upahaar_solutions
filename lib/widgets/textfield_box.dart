import 'package:flutter/material.dart';

class TextFieldBox extends StatelessWidget {
  final TextEditingController controller;
  final String name;
  final TextInputType inputType;

  const TextFieldBox({
    key,
    @required this.controller,
    @required this.name,
    @required this.inputType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 34, right: 34),
        child: TextField(
          enabled: true,
          controller: controller,
          keyboardType: inputType,
          decoration: InputDecoration(
            labelText: name,
            labelStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: Color.fromRGBO(1, 0, 53, 1).withOpacity(0.8),
            ),
          ),
        ));
  }
}
