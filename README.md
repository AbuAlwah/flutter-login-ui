<div align="center">

# 📱 Mobile Auth App (Flutter)

[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)

A clean, modern, and full-featured user authentication mobile application built with **Flutter** and **Dart**. This project features a complete authentication flow including onboarding, sign-in, sign-up, password recovery with OTP verification, and password reset screens—all built with modular, reusable components and dynamic state-driven UI interactions.

## </div>

## 📸 Screenshots Showcase

|                                                                  🚀 Welcome                                                                  |                                                                  🔐 Sign In                                                                  |                                                                  📝 Sign Up                                                                  |
| :------------------------------------------------------------------------------------------------------------------------------------------: | :------------------------------------------------------------------------------------------------------------------------------------------: | :------------------------------------------------------------------------------------------------------------------------------------------: |
| <img src="https://github.com/AbuAlwah/flutter-login-ui/blob/8a2afa8da4aaa595fa53e6d88586ced02fdce801/assets/WelcomPage_v2.jpg" width="220"/> | <img src="https://github.com/AbuAlwah/flutter-login-ui/blob/8a2afa8da4aaa595fa53e6d88586ced02fdce801/assets/SigninPage_v2.jpg" width="220"/> | <img src="https://github.com/AbuAlwah/flutter-login-ui/blob/8a2afa8da4aaa595fa53e6d88586ced02fdce801/assets/SignupPage_v2.jpg" width="220"/> |

|                                            🔑 Recover Password                                             |                                            📩 OTP Verification                                             |                                            🔄 Reset Password                                             |
| :--------------------------------------------------------------------------------------------------------: | :--------------------------------------------------------------------------------------------------------: | :------------------------------------------------------------------------------------------------------: |
| <img src="https://github.com/AbuAlwah/flutter-login-ui/blob/main/assets/RecoverPassword.jpg" width="220"/> | <img src="https://github.com/AbuAlwah/flutter-login-ui/blob/main/assets/OTPVerification.jpg" width="220"/> | <img src="https://github.com/AbuAlwah/flutter-login-ui/blob/main/assets/ResetPassword.jpg" width="220"/> |

---

## ✨ Features

- **Complete Auth Flow:** Seamless transition across Welcome, Sign In, Sign Up, Recover Password, Email Verification (OTP), and Reset Password screens.
- **Smart OTP Input Validation:** Powered by `pinput`, featuring a dynamic verification button that activates only when all 4 digits are completely entered.
- **Clean Navigation Management:** Optimized stack control using `Navigator.pushAndRemoveUntil` and `pushReplacement` to ensure a clean navigation history.
- **Highly Reusable Architecture:** Custom modular components (`CustomAuthTitleAndSubtitle`, `CustomElevatedButton`, `CustomTextField`, etc.) to enforce DRY (Don't Repeat Yourself) principles.
- **Modern UI/UX Design:** Immersive layouts, modern typography, custom curved header shapes, and intuitive back-navigation actions (`← Back to Login`, `← Change Email`).

---

## 🛠️ Tech Stack & Packages

- **Framework:** [Flutter](https://flutter.dev/)
- **Language:** [Dart](https://dart.dev/)
- **Key Packages:**
  - `pinput`: For custom 4-digit code entry fields.
  - `google_fonts`: For modern typography (e.g., Rubik).
  - `gap`: For clean and consistent layout spacing.

---

## 📁 Project Structure

```text
lib/
├── main.dart
├── assets/
├── Screens/
│   ├── welcom.dart
│   ├── signin.dart
│   ├── signup.dart
│   ├── recoverPassword.dart
│   ├── emailVerification.dart
│   └── resetPassword.dart
└── Widgets/
    ├── CustomAuthHeader.dart
    ├── CustomAuthTitleAndSubtitle.dart
    ├── CustomTextFiled.dart
    ├── CustomElevatedButton.dart
    └── CustomAuthFooter.dart

```

 ---

## ⚙️ Installation & Getting Started

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/AbuAlwah/flutter-login-ui.git
   ```
