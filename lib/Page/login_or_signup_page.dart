import 'package:flutter/material.dart';
import 'package:myacc/Page/signup_page.dart';

import 'login_page.dart';

class LoginOrSignUpPage extends StatefulWidget {
  const LoginOrSignUpPage({super.key});

  @override
  State<LoginOrSignUpPage> createState() => _LoginOrSignUpPageState();
}

class _LoginOrSignUpPageState extends State<LoginOrSignUpPage> {
  bool showLoginPage = true;
  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage();
    } else {
      return SignUp();
    }
    // return const Placeholder();
  }
}
