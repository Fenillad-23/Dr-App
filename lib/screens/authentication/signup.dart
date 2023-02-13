import 'package:demo/screens/authentication/signin.dart';
import 'package:demo/color/AppColor.dart';
import 'package:demo/controller/signupController.dart';
import 'package:demo/widget/EditText.dart';
import 'package:demo/widget/TextView.dart';
import 'package:demo/widget/primaryButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widget/appBar.dart';
import '../../widget/roundContainer.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  signupcontroller controller = Get.put(signupcontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: AppColors.appBackground,
        appBar: Appbar(
          'Sign Up',
        ),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
                padding: const EdgeInsets.only(left: 24.0, top: 24),
                child: TextView('Name',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    textColor: AppColors.deepdarkTextColor)),
            Padding(
                padding:
                    const EdgeInsets.only(left: 24.0, top: 12, right: 24.0),
                child: EditText(
                  controller: controller.nameController,
                  hint: 'Enter your Name',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 1.0)),
                  borderRadius: 8,
                )),
            Padding(
                padding: const EdgeInsets.only(left: 24.0, top: 24),
                child: TextView('Email',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    textColor: AppColors.deepdarkTextColor)),
            Padding(
                padding:
                    const EdgeInsets.only(left: 24.0, top: 12, right: 24.0),
                child: EditText(
                  controller: controller.emailController,
                  hint: 'Enter your Email Id',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 1.0)),
                  borderRadius: 8,
                )),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 16),
              child: TextView('Password',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  textColor: AppColors.deepdarkTextColor),
            ),
            Padding(
                padding:
                    const EdgeInsets.only(left: 24.0, top: 16, right: 24.0),
                child: Obx(() => EditText(
                      controller: controller.passwordController,
                      hint: 'Enter your Password',
                      obscureText: controller.obscure.value,
                      borderRadius: 8,
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blue, width: 0.0)),
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
                              })),
                    ))),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 16, right: 95),
              child: Row(
                children: [
                  Checkbox(
                    shape: CircleBorder(),
                    value: controller.termsAndCondition.value,
                    onChanged: (value) {
                      controller.termsAndCondition.value = value!;
                      setState(() {});
                    },
                  ),
                  Expanded(
                    child: TextView(
                      'I agree to the doctors Terms of Service and Privacy Policy',
                      textColor: AppColors.deepdarkTextColor,
                      maxLines: 2,
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 113, left: 130, right: 129),
                child: primaryButton(
                    155,
                    44,
                    Theme.of(context).primaryColor.withOpacity(.8),
                    () {},
                    'SignUp',
                    AppColors.lightTextColor,
                    22)),
            GestureDetector(
              onTap: () {
                Get.to(SignIn());
              },
              child: Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextView('Already have an account?',
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            textColor: AppColors.deepdarkTextColor),
                        TextView('SignIn',
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            textColor: AppColors.deepdarkTextColor)
                      ])),
            ),
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
                  child: TextView('Signup with',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      textColor: AppColors.deepdarkTextColor)),
            ),
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
                          64, 64, 'assets/images/facebook_logo.png', () {})),
                  Padding(
                      padding: const EdgeInsets.only(left: 32.0),
                      child: RoundContainer(
                          64, 64, 'assets/images/apple_logo.png', () {}))
                ]))
          ]),
        ));
  }
}
