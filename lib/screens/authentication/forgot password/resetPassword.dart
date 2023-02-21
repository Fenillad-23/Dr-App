import 'package:Dr.App/screens/authentication/signin.dart';
import 'package:Dr.App/controller/forgotPasswordController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../color/AppColor.dart';
import '../../../widget/EditText.dart';
import '../../../widget/TextView.dart';
import '../../../widget/appBar.dart';
import '../../../widget/primaryButton.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  forgotpasswordcontroller controller = Get.put(forgotpasswordcontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: Appbar('Reset Password'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 24.0, top: 24),
                child: TextView('Create Password',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    textColor: AppColors.deepdarkTextColor)),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24, top: 12),
              child: EditText(
                obscureText: controller.obscure.value,
                controller: controller.newPassword,
                hint: 'Enter your new Password',
                suffixIcon: controller.obscure.value
                    ? IconButton(
                        onPressed: () {
                          controller.changeObscure(controller.obscure.value);
                          setState(() {});
                        },
                        icon: Icon(Icons.visibility_outlined))
                    : IconButton(
                        onPressed: () {
                          controller.changeObscure(controller.obscure.value);
                          setState(() {});
                        },
                        icon: Icon(Icons.visibility_off_outlined)),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 1.0)),
                borderRadius: 8,
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 24.0, top: 24),
                child: TextView('Confirm Password',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    textColor: AppColors.deepdarkTextColor)),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24, top: 12),
              child: EditText(
                controller: controller.confirmNewPassword,
                hint: 'Confirm new Password',
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 1.0)),
                borderRadius: 8,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 260.0, left: 130, right: 129),
              child: primaryButton(
                  155, 44, Theme.of(context).primaryColor.withOpacity(.8), () {
                Get.to(SignIn());
              }, 'Submit', AppColors.lightTextColor, 22),
            ),
            GestureDetector(
              onTap: () {
                Get.to(SignIn());
              },
              child: Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
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
          ],
        ),
      ),
    );
  }
}
