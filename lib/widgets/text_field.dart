import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.lable,
      required this.hint,
      required this.password});
  final String lable;
  final String hint;
  final bool password;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: password,
      decoration: InputDecoration(
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 22, horizontal: 12),
          labelText: lable,
          labelStyle: const TextStyle(
              color: Color(0xffC5C5C5),
              fontWeight: FontWeight.bold,
              fontSize: 23),
          hintText: hint),
    );
  }
}
