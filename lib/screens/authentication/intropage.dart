import 'package:Dr.App/color/AppColor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';

import '../../widget/TextView.dart';
import '../../widget/primaryButton.dart';
import 'signin.dart';
import 'signup.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
                height: MediaQuery.of(context).size.height,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 159, right: 159, top: 112),
                          child: Hero(
                              tag: 'logo',
                              child: Image.asset('assets/images/blue_logo.png',
                                  width: 97, height: 97))),
                      Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: TextView('DOCTORS',
                              letterSpacing: 12,
                              fontSize: 14,
                              fontWeight: FontWeight.w500)),
                      Padding(
                          padding: const EdgeInsets.only(top: 48, left: 115),
                          child: Row(children: [
                            TextView('Let\'s get Started!',
                                letterSpacing: 1,
                                fontSize: 24,
                                fontWeight: FontWeight.w600)
                          ])),
                      Padding(
                          padding: const EdgeInsets.only(
                              top: 289, left: 130, right: 129),
                          child: primaryButton(155, 44,
                              Theme.of(context).primaryColor.withOpacity(.8),
                              () {
                            Get.to(SignIn(),
                                transition: Transition.fade,
                                curve: Curves.easeInOutCirc,
                                duration: Duration(milliseconds: 2000));
                          }, 'Login', AppColors.lightTextColor, 22)),
                      Padding(
                          padding: const EdgeInsets.only(top: 32.0),
                          child: primaryButton(
                              155, 44, AppColors.lightButtonColor, () {
                            Get.to(SignUp(),
                                transition: Transition.fade,
                                curve: Curves.easeInOutCirc,
                                duration: Duration(milliseconds: 2000));
                          }, 'Sign Up', AppColors.darkTextColor, 22,
                              AppColors.lightButtonBorder))
                    ]))));
  }
}
