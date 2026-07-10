import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_login_app/Widgets/CustomTextFiled.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: AlignmentGeometry.topRight,
            child: Image.asset('assets/singleCircle.png', width: 250),
          ),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
            child: Text(
              'Sign in',
              style: GoogleFonts.rubik(
                textStyle: TextStyle(fontSize: 40),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
            child: Image.asset('assets/Line.png', width: 95),
          ),

          Gap(30),
          CustomTextFiled(
            name: 'Email',
            hintText: 'abualwah@gmail.com',
            suffixIcon: Icons.email_outlined,
          ),
          Gap(5),
          CustomTextFiled(
            name: 'Password',
            hintText: 'Enter your Password',
            suffixIcon: Icons.password_outlined,
          ),
        ],
      ),
    );
  }
}
