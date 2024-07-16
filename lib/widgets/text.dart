import 'package:flutter/material.dart';

class HeadText extends StatelessWidget {
  const HeadText({super.key, required this.lable});
  final String lable;
  @override
  Widget build(BuildContext context) {
    return Text(
      lable,
      style: const TextStyle(
          fontWeight: FontWeight.bold, color: Color(0xff75D1C3), fontSize: 44),
    );
  }
}
