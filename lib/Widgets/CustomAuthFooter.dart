// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAuthFotter extends StatelessWidget {
  const CustomAuthFotter({super.key, required this.questionText, required this.onTap, required this.actionText});

  final String questionText;
  final VoidCallback onTap;
  final String actionText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                questionText,
                style: GoogleFonts.rubik(
                  textStyle: TextStyle(
                    color: const Color.fromARGB(255, 193, 193, 191),
                  ),
                ),
              ),
              TextButton(
                onPressed: onTap,
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
    );
  }
}
