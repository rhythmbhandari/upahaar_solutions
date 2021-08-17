import 'package:flutter/material.dart';

class TextFieldPadding extends StatelessWidget {
  final TextEditingController controller;
  final String name;

  const TextFieldPadding({
    key,
    @required this.controller,
    @required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        enabled: true,
        controller: controller,
        decoration: InputDecoration(
          labelText: name,
          labelStyle: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: Color.fromRGBO(1, 0, 53, 1).withOpacity(0.8),
          ),
        ),
    );
  }
}
