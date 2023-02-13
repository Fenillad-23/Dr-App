import 'package:demo/authentication/signup.dart';
import 'package:demo/color/AppColor.dart';
import 'package:demo/controller/signinController.dart';
import 'package:demo/widget/EditText.dart';
import 'package:demo/widget/TextView.dart';
import 'package:demo/widget/primaryButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widget/appBar.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  signincontroller controller = Get.put(signincontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: AppColors.appBackground,
        appBar: Appbar(
          'Forgot Password',
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 24),
              child: TextView('Phone Number',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  textColor: AppColors.deepdarkTextColor)),
          Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 12, right: 24.0),
              child: EditText(
                controller: controller.emailController,
                hint: 'Enter your Phone number',
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 1.0)),
                borderRadius: 8,
              )),
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [TextView('OR')],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 24),
              child: TextView('Email',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  textColor: AppColors.deepdarkTextColor)),
          Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 22, right: 24.0),
              child: EditText(
                controller: controller.emailController,
                hint: 'Enter your Email Id',
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 1.0)),
                borderRadius: 8,
              )),
          Padding(
            padding: const EdgeInsets.only(top: 203.0, left: 130),
            child: primaryButton(
                155,
                44,
                Theme.of(context).primaryColor.withOpacity(.8),
                () {},
                'SignIn',
                AppColors.lightTextColor,
                22),
          ),
          GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  TextView('Remembered password?',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      textColor: AppColors.deepdarkTextColor),
                  TextView('SignIn',
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      textColor: AppColors.deepdarkTextColor)
                ])),
          )
        ]));
  }
}
