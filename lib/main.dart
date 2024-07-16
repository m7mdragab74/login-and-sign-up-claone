import 'package:flutter/material.dart';
import 'package:login_signup_clone/views/login_view.dart';

void main() {
  runApp(const LoginAndSignUpClone());
}

class LoginAndSignUpClone extends StatelessWidget {
  const LoginAndSignUpClone({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
