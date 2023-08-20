import 'dart:async';
import 'package:careapp/utils/global.colors.dart';
import 'package:careapp/view/screen/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Get.to(const LoginView());
    });
    return Scaffold(
      backgroundColor: GlobalClors.bodyColor,
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color.fromARGB(255, 54, 130, 236),
            Color.fromARGB(255, 40, 4, 79)
          ],
        )),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/logo1.png"),
            ],
          ),
        ),
      ),
    );
  }
}
