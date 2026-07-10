// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({
    super.key,
    required this.name,
    required this.hintText,
    required this.suffixIcon,
  });

  final String name;
  final String hintText;
  final IconData suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
          child: Column(
            children: [
              Text(
                name,
                style: GoogleFonts.rubik(
                  textStyle: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            decoration: InputDecoration(
              suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
              hintText: hintText,
              hintStyle: TextStyle(
                color: const Color.fromARGB(255, 193, 193, 191),
              ),
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
        SizedBox(height: 25),
      ],
    );
  }
}
