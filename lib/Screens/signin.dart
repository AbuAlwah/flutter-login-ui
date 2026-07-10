import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            padding: EdgeInsetsGeometry.only(left: 30),
            child: Text(
              'Sign in',
              style: GoogleFonts.rubik(
                textStyle: TextStyle(fontSize: 40),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.only(left: 30),
            child: Image.asset('assets/Line.png', width: 95),
          ),

          SizedBox(height: 60),
        ],
      ),
    );
  }
}
