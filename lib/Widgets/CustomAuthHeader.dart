
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAuthHeader extends StatelessWidget {
  const CustomAuthHeader({
    super.key,
    required this.imagePath,
    required this.title,
    required this.imageWidth,
    required this.imageLinePath,
    required this.imageLineWidth,
  });
  final String imagePath;
  final double imageWidth;
  final String title;
  final String imageLinePath;
  final double imageLineWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: AlignmentGeometry.topRight,
          child: Image.asset(imagePath, width: imageWidth),
        ),
        Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
          child: Text(
            title,
            style: GoogleFonts.rubik(
              textStyle: TextStyle(fontSize: 40),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
          child: Image.asset('assets/Line.png', width: imageLineWidth),
        ),
      ],
    );
  }
}
