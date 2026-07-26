import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:simple_login_app/Widgets/CustomAuthTitleAndSubtitle.dart';
import 'package:simple_login_app/Widgets/CustomContainer.dart';
import 'package:simple_login_app/Widgets/CustomTextFiled.dart';

class Forgetpassword extends StatelessWidget {
  const Forgetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAuthTitleAndSubtitle(
              title: "Mail Address Here",
              subTitle:
                  "Enter the email address associated\n with your account.",
              titleFontSize: 25,
              subTitleFontSize: 20,
              imagPath: 'assets/Wave.png',
            ),
            Gap(50),

            CustomTextFiled(
              name: "Email",
              hintText: "ex: abualwah@gmail.com",
              suffixIcon: Icons.email_outlined,
            ),

            Gap(30),

            CustomContainer(name: "Recover Password"),
          ],
        ),
      ),
    );
  }
}
