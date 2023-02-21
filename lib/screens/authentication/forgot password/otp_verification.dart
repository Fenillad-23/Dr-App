import 'package:Dr.App/screens/authentication/forgot%20password/resetPassword.dart';
import 'package:Dr.App/controller/forgotPasswordController.dart';
import 'package:Dr.App/widget/TextView.dart';
import 'package:Dr.App/widget/primaryButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

import '../../../color/AppColor.dart';
import '../../../widget/appBar.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  forgotpasswordcontroller controller = Get.put(forgotpasswordcontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      appBar: Appbar(
        'Forgot Password',
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 24.0),
              child: TextView(
                'Enter OTP',
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 59, top: 16, right: 75),
              child: OTPTextField(
                  // controller: controller.otpController,
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  outlineBorderRadius: 8,
                  length: 4,
                  width: MediaQuery.of(context).size.width,
                  fieldWidth: 50,
                  fieldStyle: FieldStyle.box,
                  onChanged: (value) {},
                  onCompleted: (pin) {
                    controller.otp = pin.toString();
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 48.0, right: 79, left: 79),
              child: TextView(
                'Check your phone or email Id to vew OTP',
                fontSize: 14,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 274.0, left: 130, right: 129),
              child: primaryButton(
                  155, 44, Theme.of(context).primaryColor.withOpacity(.8), () {
                Get.to(ResetPassword());
              }, 'Submit', AppColors.lightTextColor, 22),
            )
          ],
        ),
      ),
    );
  }
}
