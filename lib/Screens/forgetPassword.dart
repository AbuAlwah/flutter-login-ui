import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_login_app/Screens/emailVerification.dart';
import 'package:simple_login_app/Widgets/CustomAuthTitleAndSubtitle.dart';
import 'package:simple_login_app/Widgets/CustomElevatedButton.dart';
import 'package:simple_login_app/Widgets/CustomTextFiled.dart';

class Forgetpassword extends StatefulWidget {
  const Forgetpassword({super.key});

  @override
  State<Forgetpassword> createState() => _ForgetpasswordState();
}

class _ForgetpasswordState extends State<Forgetpassword> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formkey,
        child: SingleChildScrollView(
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
                controller: _emailController,
              ),

              Gap(30),

              CustomElevatedButton(
                name: "Recover Password",
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const EmailVerification(),
                      ),
                    );
                  }
                },
              ),
              Gap(20),
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
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
      ),
    );
  }
}
