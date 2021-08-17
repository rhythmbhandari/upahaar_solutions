import 'package:flutter/material.dart';

class InputPassword extends StatefulWidget {
  final TextEditingController controller;
  final String name;

  InputPassword({
    key,
    @required this.controller,
    @required this.name,
  }) : super(key: key);

  @override
  _InputPasswordState createState() => _InputPasswordState();
}

class _InputPasswordState extends State<InputPassword> {
  bool _isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 34, right: 34),
        child: TextField(
      obscureText: _isPasswordVisible ? true : false,
      enabled: true,
      controller: widget.controller,
      decoration: InputDecoration(
        suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _isPasswordVisible = !_isPasswordVisible;
              });
            },
            icon: Icon(
                _isPasswordVisible ? Icons.visibility : Icons.visibility_off)),
        labelText: widget.name,
        labelStyle: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 18,
          color: Color.fromRGBO(1, 0, 53, 1).withOpacity(0.8),
        ),
      ),
    ));
  }
}
