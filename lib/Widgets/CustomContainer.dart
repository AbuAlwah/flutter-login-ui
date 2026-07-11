// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Center(
            child: Container(
              width: 250,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color(0xFF6F12E7),
              ),
              child: Center(
                child: Text(
                  name,
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(color: Colors.white),
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          );
  }
}