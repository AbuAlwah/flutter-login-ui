import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:simple_login_app/Widgets/CustomAuthTitleAndSubtitle.dart';
import 'package:simple_login_app/Widgets/CustomElevatedButton.dart';
import 'package:simple_login_app/Widgets/CustomTextFiled.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomAuthTitleAndSubtitle(
              title: "Enter New Password",
              subTitle:
                  "Your new password must be different\n from previously used password.",
              titleFontSize: 25,
              subTitleFontSize: 18,
              imagPath: 'assets/Wave.png',
            ),
            Gap(50),
            CustomTextFiled(
              name: "Password",
              hintText: "",
              suffixIcon: Icons.visibility_off_outlined,
              isObscure: true,
            ),
            Gap(15),
            CustomTextFiled(
              name: "Confirm Password",
              hintText: "",
              suffixIcon: Icons.visibility_off_outlined,
              isObscure: true,
            ),
            Gap(30),
                        CustomElevatedButton(name: "Continue", onPressed: () {}),

          ],
        ),
      ),
    );
  }
}
