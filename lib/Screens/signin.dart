import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_login_app/Screens/signup.dart';
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
            child: Image.asset('assets/singleCircle.png', width: 300),
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
            hintText: 'Enter your password',
            suffixIcon: Icons.visibility_off_outlined,
          ),

          Padding(
            padding: EdgeInsetsGeometry.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 24,
                      width: 24,
                      child: Checkbox(
                        value: true,
                        onChanged: (value) {},
                        activeColor: const Color(0xFF6F12E7),
                      ),
                    ),
                    const Gap(8),
                    Text('Remember Me', style: GoogleFonts.rubik()),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: Text(
                    'Forget Password ?',
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0xFF6F12E7),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Gap(60),
          Center(
            child: Container(
              width: 250,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color(0xFF6F12E7),
              ),
              child: Center(
                child: Text(
                  'Login',
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(color: Colors.white),
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          Gap(10),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account ?",
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                      color: const Color.fromARGB(255, 193, 193, 191),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Signup()),
                    );
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: Text(
                    'Sign Up',
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF6F12E7),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
