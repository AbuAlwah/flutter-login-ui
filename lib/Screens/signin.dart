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

          SizedBox(height: 50),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
            child: Column(
              children: [
                Text('Email', style: GoogleFonts.rubik(textStyle: TextStyle(fontWeight: FontWeight.w500))),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.email_outlined),
                hintText: 'ali@gmail.com',hintStyle: TextStyle(color: const Color.fromARGB(255, 193, 193, 191)),
                border: UnderlineInputBorder(),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Color(0xff6F12E7)),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: const Color.fromARGB(255, 186, 186, 186),
                    width: 2,
                  ),
                ),
              ),
            ),
          ),
                    SizedBox(
            height: 25,
          ),
           Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
            child: Column(
              children: [
                Text('Password', style: GoogleFonts.rubik(textStyle: TextStyle(fontWeight: FontWeight.w500))),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.password_outlined),
                hintText: '*****',hintStyle: TextStyle(color: const Color.fromARGB(255, 193, 193, 191)),
                border: UnderlineInputBorder(),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Color(0xff6F12E7)),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: const Color.fromARGB(255, 186, 186, 186),
                    width: 2,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
