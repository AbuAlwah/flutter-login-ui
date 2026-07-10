import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_login_app/Screens/signin.dart';

class Welcom extends StatelessWidget {
  const Welcom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Image.asset('assets/BG2.png', width: 300),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 35),
            child: Text(
              "Welcom",
              style: GoogleFonts.rubik(
                textStyle: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),

            child: Text(
              'Lorm ipsum dolor sit amet, consectetur adipiscing elit. In euismod ipsum et dui\n rhoncus auctor.',
              style: GoogleFonts.rubik(
                textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromARGB(255, 186, 186, 186),
                ),
              ),
            ),
          ),

          Gap(70),
          Padding(
            padding: EdgeInsetsGeometry.only(left: 230),
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (c) => Signin()),
                );
              },
              child: Row(
                children: [
                  Text(
                    "Continue",
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        color: const Color.fromARGB(255, 186, 186, 186),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Image.asset('assets/nextButton.png', width: 70),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
