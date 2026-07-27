import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:simple_login_app/Screens/signin.dart';
import 'package:simple_login_app/Widgets/CustomAuthFooter.dart';
import 'package:simple_login_app/Widgets/CustomAuthHeader.dart';
import 'package:simple_login_app/Widgets/CustomElevatedButton.dart';
import 'package:simple_login_app/Widgets/CustomTextFiled.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAuthHeader(
              imagePath: 'assets/singleCircle.png',
              title: 'Sign Up',
              imageWidth: 170,
              imageLinePath: 'assets/Line.png',
              imageLineWidth: 95,
            ),
            Gap(30),
            CustomTextFiled(
              name: 'Email',
              hintText: 'ex: abualwah@gmail.com',
              suffixIcon: Icons.email_outlined,
              isObscure: false,
            ),
            Gap(5),
            CustomTextFiled(
              name: 'Phone no',
              hintText: '+967 ',
              suffixIcon: Icons.phone_outlined,
              isObscure: false,
            ),
            Gap(5),
            CustomTextFiled(
              name: 'Password',
              hintText: '',
              suffixIcon: Icons.visibility_off_outlined,
              isObscure: true,
            ),
            Gap(5),
            CustomTextFiled(
              name: 'Confirm Password',
              hintText: '',
              suffixIcon: Icons.visibility_off_outlined,
              isObscure: true,
            ),
            Gap(10),
            CustomElevatedButton(name: "Creat Account", onPressed: () {}),

            Gap(10),
            CustomAuthFotter(
              questionText: 'Already have an account ! ',
              actionText: "Sign In",
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Signin()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
