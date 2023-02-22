import 'package:Dr.App/controller/homepageController.dart';
import 'package:Dr.App/widget/AssetIcon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../color/AppColor.dart';
import '../../../controller/appointmentController.dart';
import '../../../widget/TextView.dart';
import '../../../widget/appBar.dart';
import '../../../widget/primaryButton.dart';
import '../../../widget/roundContainer.dart';
import 'creditdetails.dart';

class AppointmentDetails extends StatefulWidget {
  const AppointmentDetails({super.key});
  @override
  State<AppointmentDetails> createState() => _AppointmentDetailsState();
}

class _AppointmentDetailsState extends State<AppointmentDetails> {
  homepageController controller = Get.put(homepageController());
  BookAppointmentController bController = Get.put(BookAppointmentController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: AppColors.appBackground,
        appBar: Appbar('Appoinment Details'),
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              child: Container(
                  decoration: BoxDecoration(
                      border: BorderDirectional(
                          bottom: BorderSide(color: Colors.grey.shade300))),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 16, top: 24),
                                child: Row(children: [
                                  Column(children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                            controller.doctorData[0]['img'],
                                            height: 102,
                                            width: 135,
                                            fit: BoxFit.fitWidth))
                                  ]),
                                  Padding(
                                      padding:
                                          const EdgeInsets.only(left: 18.0),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            TextView(
                                                controller.doctorData[0]
                                                    ['name'],
                                                fontSize: 18),
                                            Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 6.0),
                                                child: TextView(
                                                    controller.doctorData[0]
                                                        ['category'],
                                                    textColor:
                                                        AppColors.shadowColor)),
                                            Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 4.0),
                                                child: Row(children: [
                                                  Icon(
                                                      Icons
                                                          .location_history_outlined,
                                                      size: 15,
                                                      color: AppColors
                                                          .darkTextColor),
                                                  Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 8.0),
                                                      child: TextView(
                                                          controller
                                                                  .doctorData[0]
                                                              ['distance'],
                                                          textColor: AppColors
                                                              .shadowColor))
                                                ])),
                                            Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 4.0),
                                                child: Row(children: [
                                                  Icon(Icons.star,
                                                      size: 15,
                                                      color: Colors
                                                          .yellow.shade700),
                                                  Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 8.0),
                                                      child: TextView(
                                                          controller
                                                                  .doctorData[0]
                                                              ['rating'],
                                                          textColor: AppColors
                                                              .shadowColor))
                                                ]))
                                          ]))
                                ]))),
                        Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 24.0, right: 24, top: 24),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextView(
                                  'Date',
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                ),
                                TextView('change',
                                    textColor: AppColors.shadowColor)
                              ],
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(top: 22, left: 20),
                              child: Row(children: [
                                RoundContainer(40, 40,
                                    'assets/images/calendar.png', () {}),
                                Padding(
                                    padding: const EdgeInsets.only(
                                      left: 20.0,
                                    ),
                                    child: TextView('Monday, Sept 12, 2022'))
                              ])),
                          Padding(
                              padding: const EdgeInsets.only(
                                  left: 24.0, right: 24, top: 24),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextView('Time',
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                    TextView('change',
                                        textColor: AppColors.shadowColor)
                                  ])),
                          Padding(
                              padding: const EdgeInsets.only(top: 22, left: 20),
                              child: Row(children: [
                                RoundContainer(
                                    40, 40, 'assets/images/time.png', () {}),
                                Padding(
                                    padding: const EdgeInsets.only(
                                      left: 20.0,
                                    ),
                                    child: TextView('10.00 am'))
                              ])),
                          Padding(
                              padding: const EdgeInsets.only(
                                  left: 24.0, right: 24, top: 24),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextView('Reason',
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                    TextView('change',
                                        textColor: AppColors.shadowColor)
                                  ])),
                          Padding(
                              padding: const EdgeInsets.only(
                                  top: 22, left: 20, bottom: 18),
                              child: Row(children: [
                                RoundContainer(
                                    40, 40, 'assets/images/edit.png', () {}),
                                Padding(
                                    padding: const EdgeInsets.only(
                                      left: 20.0,
                                    ),
                                    child: TextView('Body pain& head ache'))
                              ]))
                        ])
                      ]))),
          Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 16),
              child: TextView('Payment Details',
                  fontSize: 17, fontWeight: FontWeight.w500)),
          Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24, top: 16),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextView('Constitution',
                        fontSize: 17, textColor: AppColors.shadowColor),
                    TextView('\$ 50',
                        fontSize: 17, textColor: AppColors.shadowColor)
                  ])),
          Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24, top: 16),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextView('Messaging Fees',
                        fontSize: 17, textColor: AppColors.shadowColor),
                    TextView('\$ 20',
                        fontSize: 17, textColor: AppColors.shadowColor)
                  ])),
          Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24, top: 16),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextView('Total', fontSize: 17),
                    TextView(
                      '\$ 70',
                      textColor: AppColors.darkTextColor,
                      fontSize: 17,
                    )
                  ])),
          Divider(color: AppColors.shadowColor, indent: 24, endIndent: 24),
          Padding(
              padding: EdgeInsets.only(left: 24, right: 24, top: 16),
              child: TextView('Payment Methods',
                  fontSize: 20, fontWeight: FontWeight.w500)),
          Padding(
              padding: EdgeInsets.only(top: 16, left: 24, right: 24),
              child: Column(children: [
                DropdownButtonFormField(
                    borderRadius: BorderRadius.circular(8),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.appBarColor,
                        suffixIconColor: AppColors.darkTextColor),
                    hint: TextView('Select Payment Method'),
                    items: bController.paymentmethod
                        .map((e) => DropdownMenuItem(
                            value: e.toString(),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TextView(e.toString()),
                                  Padding(
                                      padding:
                                          const EdgeInsets.only(left: 180.0),
                                      child: icon(e.toString()))
                                ])))
                        .toList(),
                    onChanged: ((value) {
                      Get.to(CreditCardDetails(),
                          transition: Transition.fade,
                          curve: Curves.easeInCirc,
                          duration: Duration(milliseconds: 2000));
                    }))
              ])),
          Padding(
              padding: const EdgeInsets.only(top: 48.0, left: 130, bottom: 27),
              child: primaryButton(
                  155, 44, Theme.of(context).primaryColor.withOpacity(.8), () {
                (CreditCardDetails());
              }, 'Book Now', AppColors.lightTextColor, 22))
        ])));
  }

  Widget icon(String e) {
    String path = '';
    if (e == 'Phone Pay') {
      path = 'assets/Icons/phonepay.png';
      setState(() {});
    }
    if (e == 'Google Pay') {
      path = 'assets/Icons/gpay.png';
      setState(() {});
    }
    if (e == 'Freecharge Pay') {
      path = 'assets/Icons/freelence.png';
      setState(() {});
    }
    if (e == 'Amazon Pay') {
      path = 'assets/Icons/AmazonPay.png';
      setState(() {});
    }
    if (e == 'Credit/Debit card') {
      path = 'assets/Icons/creditcard.png';
      setState(() {});
    }
    return AssetIcon(path);
  }
}
