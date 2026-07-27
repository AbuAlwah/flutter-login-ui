import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import 'package:simple_login_app/Screens/resetPassword.dart';
import 'package:simple_login_app/Widgets/CustomElevatedButton.dart';

import '../Widgets/CustomAuthTitleAndSubtitle.dart';

class EmailVerification extends StatefulWidget {
  const EmailVerification({super.key});

  @override
  State<EmailVerification> createState() => _EmailVerificationState();
}

class _EmailVerificationState extends State<EmailVerification> {
  final TextEditingController _pinController = TextEditingController();

  @override
  void dispose() {
    _pinController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 50,
      height: 50,
      textStyle: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFEFEFF4), // اللون الرمادي الفاتح كما في التصميم
        borderRadius: BorderRadius.circular(8),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAuthTitleAndSubtitle(
              title: "Get Your Code",
              subTitle:
                  "Please enter the 4 digit code that send\n to your email address.",
              titleFontSize: 25,
              subTitleFontSize: 20,
              imagPath: 'assets/Wave.png',
            ),
            Gap(50),

            Center(
              child: Pinput(
                length: 4, // عدد المربعات
                controller: _pinController,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: defaultPinTheme.copyWith(
                  decoration: defaultPinTheme.decoration!.copyWith(
                    border: Border.all(
                      color: const Color(0xFF5D02D5),
                    ), // لون عند التركيز
                  ),
                ),
                onCompleted: (pin) {
                  // يتم استدعاؤها أوتوماتيكياً عند إكمال الـ 4 أرقام
                  print("Entered PIN: $pin");
                },
              ),
            ),
            Gap(12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "If you don't receive code! ",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 141, 140, 140),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: Text(
                    "Resend",
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0xFF6F12E7),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Gap(50),
            CustomElevatedButton(
              name: "Verify and Proceed",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ResetPassword(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
