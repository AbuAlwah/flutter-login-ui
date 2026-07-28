import 'package:flutter/material.dart';
import 'package:simple_login_app/Screens/welcom.dart';
import 'package:flutter/services.dart';

void main() {
  // تأكد من تهيئة أدوات فلاتر أولاً
  WidgetsFlutterBinding.ensureInitialized();

  // ضبط شريط النظام العلوي ليكون شفافاً باحترافية
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors
          .transparent, // جعل الخلفية شفافة تماماً لتمتد الألوان والصور خلفها
      statusBarIconBrightness: Brightness
          .dark, // جعل أيقونات البطارية والساعة باللون الأسود/الداكن (إذا كانت خلفيتك بيضاء)
    ),
  );

  runApp(const Auth());
}

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Welcom());
  }
}
