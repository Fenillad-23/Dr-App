import 'package:Dr.App/screens/authentication/forgot%20password/forgotpassword.dart';
import 'package:Dr.App/screens/authentication/signup.dart';
import 'package:Dr.App/color/AppColor.dart';
import 'package:Dr.App/controller/signinController.dart';
import 'package:Dr.App/widget/EditText.dart';
import 'package:Dr.App/widget/TextView.dart';
import 'package:Dr.App/widget/primaryButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widget/appBar.dart';
import '../../widget/roundContainer.dart';
import '../dashboard/homepage.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  signincontroller controller = Get.put(signincontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: AppColors.appBackground,
        appBar: Appbar('Login'),
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 24),
              child: TextView('Email',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  textColor: AppColors.deepdarkTextColor)),
          Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 12, right: 24.0),
              child: EditText(
                  controller: controller.emailController,
                  hint: 'Enter your Email Id',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 1.0)),
                  borderRadius: 8)),
          Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 16),
              child: TextView('Password',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  textColor: AppColors.deepdarkTextColor)),
          Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 16, right: 24.0),
              child: Obx(() => EditText(
                  controller: controller.passwordController,
                  hint: 'Enter your Password',
                  obscureText: controller.obscure.value,
                  borderRadius: 8,
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 0.0)),
                  suffixIcon: controller.obscure.value
                      ? IconButton(
                          icon: Icon(Icons.visibility),
                          onPressed: () {
                            controller.obscure.value =
                                !controller.obscure.value;
                          })
                      : IconButton(
                          icon: Icon(Icons.visibility_off),
                          onPressed: (() {
                            controller.obscure.value =
                                !controller.obscure.value;
                          }))))),
          GestureDetector(
              onTap: () {
                Get.to(ForgotPassword());
              },
              child: Padding(
                  padding: const EdgeInsets.only(right: 24.0, top: 12),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    TextView('Forgot Password',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        textColor: AppColors.deepdarkTextColor)
                  ]))),
          Padding(
              padding: const EdgeInsets.only(top: 240, left: 130, right: 129),
              child: primaryButton(
                  155, 44, Theme.of(context).primaryColor.withOpacity(.8), () {
                Get.to(HomePage());
              }, 'SignIn', AppColors.lightTextColor, 22)),
          GestureDetector(
              onTap: () {
                Get.off(SignUp());
              },
              child: Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextView('Don\'t have an account?',
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            textColor: AppColors.deepdarkTextColor),
                        TextView('SignIn',
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            textColor: AppColors.darkTextColor)
                      ]))),
          Padding(
            padding: const EdgeInsets.only(top: 32),
            child: Center(
                child: TextView('OR',
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    textColor: AppColors.deepdarkTextColor)),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Center(
                  child: TextView('Signin with',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      textColor: AppColors.deepdarkTextColor))),
          Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: Row(children: [
                Padding(
                    padding: const EdgeInsets.only(left: 79.0),
                    child: RoundContainer(
                        64, 64, 'assets/images/google_logo.png', () {})),
                Padding(
                  padding: const EdgeInsets.only(left: 32.0),
                  child: RoundContainer(
                      64, 64, 'assets/images/facebook_logo.png', () {}),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32.0),
                  child: RoundContainer(
                      64, 64, 'assets/images/apple_logo.png', () {}),
                )
              ]))
        ])));
  }
}
