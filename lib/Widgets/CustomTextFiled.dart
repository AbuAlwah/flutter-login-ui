// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFiled extends StatefulWidget {
  const CustomTextFiled({
    super.key,
    required this.name,
    required this.hintText,
    required this.suffixIcon,
    this.isObscure = false,
  });

  final String name;
  final String hintText;
  final IconData suffixIcon;
  final bool isObscure;

  @override
  State<CustomTextFiled> createState() => _CustomTextFiledState();
}

class _CustomTextFiledState extends State<CustomTextFiled> {
  late bool _obscureText;
  @override
  void initState() {
    super.initState();
    _obscureText = widget.isObscure;
  }

  @override
  Widget build(BuildContext context) {
    final bool isPassword =
        widget.name == "Password" || widget.name == "Confirm Password";
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
            child: Column(
              children: [
                Text(
                  widget.name,
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextFormField(
              obscureText: isPassword ? _obscureText : false,
              keyboardType: widget.name == "Email"
                  ? TextInputType.emailAddress
                  : (widget.name == "Password"
                        ? TextInputType.visiblePassword
                        : TextInputType.text),

              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (widget.name == "Email") {
                  if (value == null || value.isEmpty) {
                    return 'Please, Enter your email !';
                  }
                  final emailRegex = RegExp(
                    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
                  );
                  if (!emailRegex.hasMatch(value.trim())) {
                    return 'Please, Enter your email correctly !';
                  }
                }

                if (widget.name == "Password") {
                  if (value == null || value.isEmpty) {
                    return "Please, Enter the password !";
                  }
                  if (value.length < 8) {
                    return "Password must be at least 8 characters long";
                  }
                }

                if (widget.name == "Confirm Password") {
                  if (value == null || value.isEmpty) {
                    return 'Please confirm your password';
                  }
                  if (value.length < 8) {
                    return 'Password must be at least 8 characters long';
                  }
                }
                return null;
              },

              decoration: InputDecoration(
                suffixIcon: isPassword
                    ? IconButton(
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        icon: Icon(
                          _obscureText
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                        ),
                      )
                    : Icon(widget.suffixIcon),
                hintText: widget.hintText,
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
      ),
    );
  }
}
