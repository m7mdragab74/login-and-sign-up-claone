import 'package:flutter/material.dart';
import 'package:login_signup_clone/views/signup_view.dart';
import 'package:login_signup_clone/widgets/elvated_button.dart';
import 'package:login_signup_clone/widgets/main_button.dart';
import 'package:login_signup_clone/widgets/main_widget.dart';
import 'package:login_signup_clone/widgets/text.dart';
import 'package:login_signup_clone/widgets/text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff75D1C3),
        leading: PopupMenuButton(
            onSelected: (String result) {
              print(result);
            },
            icon: const Icon(Icons.menu),
            iconColor: Colors.white,
            iconSize: 39,
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  value: 'Option 1',
                  child: Text('Your Account'),
                ),
              ];
            }),
      ),
      body: ListView(
        children: [
          const MainWidget(),
          const SizedBox(
            height: 80,
          ),
          const Center(child: HeadText(lable: 'LOGIN')),
          const SizedBox(
            height: 13,
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: CustomTextField(
              lable: 'Email',
              hint: 'Enter your email or user name',
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: CustomTextField(
              lable: 'Password',
              hint: 'Enter your password',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot Password ?',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff75D1C3),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 49,
                ),
                const CustomButton(
                  head: 'Login',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 65,
          ),
          MainButton(
            title: 'Sign Up',
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: ((context) => const SignUpPage()),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
