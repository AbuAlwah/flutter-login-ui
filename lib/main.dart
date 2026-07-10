import 'package:flutter/material.dart';
import 'package:simple_login_app/Screens/signin.dart';
import 'package:simple_login_app/Screens/welcom.dart';

void main() {
  runApp( const Auth());
}

class Auth extends StatelessWidget
{
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Welcom(),
    );
  }
}

