import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CreditCardController extends GetxController {
  TextEditingController cardNumber = TextEditingController();
  TextEditingController expiryDate = TextEditingController();
  TextEditingController cvv = TextEditingController();
  TextEditingController cardHolderName = TextEditingController();
}
