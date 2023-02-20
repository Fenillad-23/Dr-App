import 'package:demo/color/AppColor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/creditCardController.dart';
import '../../../widget/EditText.dart';
import '../../../widget/TextView.dart';
import '../../../widget/appBar.dart';
import '../../../widget/primaryButton.dart';
import '../services/chatService.dart';

class CreditCardDetails extends StatefulWidget {
  const CreditCardDetails({super.key});

  @override
  State<CreditCardDetails> createState() => _CreditCardDetailsState();
}

class _CreditCardDetailsState extends State<CreditCardDetails> {
  CreditCardController controller = Get.put(CreditCardController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      appBar: Appbar('Card Details'),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 24),
              child: TextView('Card Number',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  textColor: AppColors.deepdarkTextColor)),
          Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 12, right: 24.0),
              child: EditText(
                controller: controller.cardNumber,
                hint: 'Enter your Card Number',
                filled: true,
                fillColor: AppColors.appBarColor,
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 1.0)),
                borderRadius: 8,
              )),
          Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 24),
              child: TextView('Expiry date',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  textColor: AppColors.deepdarkTextColor)),
          Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 12, right: 24.0),
              child: EditText(
                controller: controller.expiryDate,
                hint: 'Enter Expiry date',
                filled: true,
                fillColor: AppColors.appBarColor,
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 1.0)),
                borderRadius: 8,
              )),
          Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 24),
              child: TextView('Cvv',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  textColor: AppColors.deepdarkTextColor)),
          Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 12, right: 24.0),
              child: EditText(
                controller: controller.cvv,
                hint: 'Enter Cvv',
                filled: true,
                fillColor: AppColors.appBarColor,
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 1.0)),
                borderRadius: 8,
              )),
          Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 24),
              child: TextView('CardHolder Name',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  textColor: AppColors.deepdarkTextColor)),
          Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 12, right: 24.0),
              child: EditText(
                filled: true,
                fillColor: AppColors.appBarColor,
                controller: controller.cardHolderName,
                hint: 'Enter Card Holder Name',
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 1.0)),
                borderRadius: 8,
              )),
          Padding(
            padding: const EdgeInsets.only(top: 140.0, left: 130, bottom: 27),
            child: primaryButton(
                155, 44, Theme.of(context).primaryColor.withOpacity(.8), () {
              // Get.to(DoctorChat());
            }, 'Next', AppColors.lightTextColor, 22),
          )
        ]),
      ),
    );
  }
}
