import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_login_app/Screens/signin.dart';
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

            Gap(20),
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const Signin()),
                    (route) => false,
                  );
                },
                child: Text(
                  "⟵ Back to Login",
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Color(0xFF6F12E7),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
