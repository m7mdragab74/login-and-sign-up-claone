import 'package:flutter/material.dart';
import 'package:login_signup_clone/widgets/elvated_button.dart';
import 'package:login_signup_clone/widgets/main_button.dart';
import 'package:login_signup_clone/widgets/main_widget.dart';
import 'package:login_signup_clone/widgets/text.dart';
import 'package:login_signup_clone/widgets/text_field.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
                  child: Text('Help ?'),
                ),
              ];
            }),
      ),
      body: ListView(
        children: [
          const MainWidget(),
          const SizedBox(
            height: 45,
          ),
          const Center(child: HeadText(lable: 'SIGN UP')),
          const SizedBox(
            height: 13,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 10,
              right: 20,
              left: 20,
            ),
            child: const CustomTextField(
              lable: 'Email',
              hint: 'Enter your email',
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 10,
              bottom: 10,
              right: 20,
              left: 20,
            ),
            child: CustomTextField(
              lable: 'Password',
              hint: 'Choose strong password',
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 10,
              bottom: 10,
              right: 20,
              left: 20,
            ),
            child: CustomTextField(
              lable: 'Confirm Password',
              hint: 'Re enter your password',
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30, left: 190, right: 21),
            child: CustomButton(head: 'Sign Up'),
          ),
          const SizedBox(
            height: 42,
          ),
          MainButton(
            title: 'Login',
            onTap: () {
              Navigator.of(context).pop();
            },
          )
        ],
      ),
    );
  }
}
