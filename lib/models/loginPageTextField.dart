import 'package:flutter/material.dart';

class LoginPageTextField extends StatelessWidget {
  final TextEditingController contrl;
  final String hint;
  final bool obscure;
  LoginPageTextField(
    this.contrl,
    this.hint,
    this.obscure,
  );

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscure,
      controller: contrl,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        hintText: hint,
      ),
      style: TextStyle(
        fontSize: 20,
        color: Colors.black,
      ),
    );
  }
}
