import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../content/home.dart';
import 'login_page.dart';
import 'register_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool showLoginPage = true;
  bool loginAprove = false;

  void toggleScreens() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  Future<void> loginStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs?.setBool("isLoggedIn", true);
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const Inicio()),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(this);
    } else {
      return RegisterPage(this);
    }
  }
}
