import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAuthTitleAndSubtitle extends StatelessWidget {
  const CustomAuthTitleAndSubtitle({
    super.key,
    required this.title,
    required this.subTitle,
    required this.titleFontSize, required this.subTitleFontSize,
  });
  final String title;
  final String subTitle;
  final double titleFontSize;
  final double subTitleFontSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            title,
            style: GoogleFonts.rubik(
              textStyle: TextStyle(
                color: const Color.fromARGB(255, 93, 2, 213),
                fontSize: titleFontSize,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),

         Center(
          child: Text(
            subTitle,
            textAlign: TextAlign.center,
            style:
               TextStyle(
                color: const Color.fromARGB(255, 141, 140, 140),
                fontSize: subTitleFontSize,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        
      ],
    );
  }
}
