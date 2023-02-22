import 'dart:async';

import 'package:Dr.App/screens/authentication/intropage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 3000), () {
      Get.to(Intro(),
          curve: Curves.ease, duration: Duration(milliseconds: 4000));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(children: [
              Padding(
                  padding:
                      const EdgeInsets.only(left: 145, right: 145, top: 350),
                  child: Hero(
                      tag: 'logo',
                      child: Image.asset('assets/images/blue_logo.png',
                          width: 124, height: 124))),
              Padding(
                  padding: const EdgeInsets.only(bottom: 300.0, top: 16),
                  child: Text('DOCTORS',
                      style: TextStyle(
                          letterSpacing: 16,
                          fontSize: 18,
                          fontWeight: FontWeight.w500)))
            ])));
  }
}
