import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAuthTitleAndSubtitle extends StatelessWidget {
  const CustomAuthTitleAndSubtitle({
    super.key,
    required this.title,
    required this.subTitle,
    required this.titleFontSize,
    required this.subTitleFontSize,
    required this.imagPath,
  });
  final String title;
  final String subTitle;
  final double titleFontSize;
  final double subTitleFontSize;
  final String imagPath;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Align(
          alignment: AlignmentGeometry.topRight,
          child: Image.asset(imagPath, width: 450),
        ),

        Gap(70),
        Center(
          child: Text(
            title,
            style: GoogleFonts.rubik(
              textStyle: TextStyle(
                color: const Color.fromARGB(255, 93, 2, 213),
                fontSize: titleFontSize,
                fontWeight: FontWeight.w500,
                height: 2,
              ),
            ),
          ),
        ),

        Center(
          child: Text(
            subTitle,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                color: const Color.fromARGB(255, 182, 175, 175),
                fontSize: subTitleFontSize,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
