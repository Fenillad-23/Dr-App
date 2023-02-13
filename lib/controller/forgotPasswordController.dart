import 'package:flutter/material.dart';
import 'package:get/get.dart';

class forgotpasswordcontroller extends GetxController {
  String otp = '';
  var obscure = true.obs;
  TextEditingController forgotPassword = TextEditingController();
  TextEditingController newPassword = TextEditingController();
  TextEditingController confirmNewPassword = TextEditingController();
  void changeObscure(bool value) {
    obscure.value = !obscure.value;
  }
}
