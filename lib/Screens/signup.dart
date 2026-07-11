import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:simple_login_app/Widgets/CustomAuthHeader.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          CustomAuthHeader(
            imagePath: 'assets/singleCircle.png',
            title: 'Sign Up',
            imageWidth: 200,
            imageLinePath: 'assets/Line.png',
            imageLineWidth: 95,
          ),
          Gap(30),
        ],
      ),
    );
  }
}
