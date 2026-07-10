import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            child: Image.asset('assets/BG2.png',width: 350,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text("Welcom",style: GoogleFonts.rubik(
            textStyle: TextStyle(fontSize: 40,fontWeight: FontWeight.w600)
          )
          ),
          ),
          Padding(
            padding:const EdgeInsets.all(16),
          
          child:Text('Lorm ipsum dolor sit amet, consectetur adipiscing elit. In euismod ipsum et dui rhoncus auctor.',style: GoogleFonts.rubik(
            textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: const Color.fromARGB(255, 132, 133, 134))
          )
          ),
          )
        ],
      ),
    );
  }
}