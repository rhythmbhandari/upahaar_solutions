import 'package:flutter/material.dart';

class InputPassword extends StatefulWidget {
  InputPassword({key}) : super(key: key);

  @override
  _InputPasswordState createState() => _InputPasswordState();
}

class _InputPasswordState extends State<InputPassword> {
  bool _isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return TextField(
          obscureText: _isPasswordVisible ? false : true,
          enabled: true,
          decoration: InputDecoration(
            suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _isPasswordVisible = !_isPasswordVisible;
                  });
                },
                icon: Icon(_isPasswordVisible
                    ? Icons.visibility
                    : Icons.visibility_off)),
            labelText: "Password",
            labelStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              color: Color.fromRGBO(1, 0, 53, 1).withOpacity(0.8),
            ),
          ),
        );
  }
}
