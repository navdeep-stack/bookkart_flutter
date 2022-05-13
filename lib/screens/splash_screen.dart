import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'account_management/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 500), () {
      Get.offAll(() => const LoginScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: const Center(
        child: Text(
          "Book Kart",
          style: TextStyle(
            color: Colors.white,
          ),
          textScaleFactor: 2,
        ),
      ),
    );
  }
}