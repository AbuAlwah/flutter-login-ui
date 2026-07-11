import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:simple_login_app/Widgets/CustomAuthFooter.dart';
import 'package:simple_login_app/Widgets/CustomAuthHeader.dart';
import 'package:simple_login_app/Widgets/CustomContainer.dart';
import 'package:simple_login_app/Widgets/CustomTextFiled.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAuthHeader(
            imagePath: 'assets/singleCircle.png',
            title: 'Sign Up',
            imageWidth: 200,
            imageLinePath: 'assets/Line.png',
            imageLineWidth: 95,
          ),
          Gap(30),
          CustomTextFiled(
            name: 'Email',
            hintText: 'ex: abualwah@gmail.com',
            suffixIcon: Icons.email_outlined,
          ),
          Gap(5),
          CustomTextFiled(
            name: 'Phone no',
            hintText: '+967 700-000-000',
            suffixIcon: Icons.phone_outlined,
          ),
          Gap(5),
          CustomTextFiled(
            name: 'Password',
            hintText: 'Enter your password',
            suffixIcon: Icons.visibility_off_outlined,
          ),
          Gap(5),
          CustomTextFiled(
            name: 'Confirm Password',
            hintText: 'Enter your password',
            suffixIcon: Icons.visibility_off_outlined,
          ),
          Gap(20),
          CustomContainer(name: 'Sign Up'),
          Gap(10),
          CustomAuthFotter(
            questionText: 'Already have an account ! ',
            onTap: () {
              Navigator.pop(context);
            },
            actionText: 'Create Account',
          ),
        ],
      ),
    );
  }
}
