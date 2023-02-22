import 'package:Dr.App/color/AppColor.dart';
import 'package:Dr.App/controller/appointmentController.dart';
import 'package:Dr.App/widget/TextView.dart';
import 'package:Dr.App/widget/primaryButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widget/appBar.dart';
import '../../../widget/roundContainer.dart';
import '../patient/patientdetail.dart';

class SelectPackage extends StatefulWidget {
  const SelectPackage({super.key});

  @override
  State<SelectPackage> createState() => _SelectPackageState();
}

class _SelectPackageState extends State<SelectPackage> {
  BookAppointmentController controller = Get.put(BookAppointmentController());

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.appBackground,
        appBar: Appbar('Select Package'),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 16.0, left: 24),
                  child: TextView('Select Duration',
                      fontSize: 20, fontWeight: FontWeight.w500)),
              Padding(
                  padding:
                      const EdgeInsets.only(left: 24.0, right: 24, top: 16),
                  child: DropdownButtonFormField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.appBarColor,
                          suffixIconColor: AppColors.darkTextColor),
                      hint: TextView('Select a Duration'),
                      items: controller.Package.map((e) => DropdownMenuItem(
                          value: e.toString(),
                          child: TextView(e.toString()))).toList(),
                      onChanged: ((value) {}))),
              Padding(
                  padding: const EdgeInsets.only(top: 16.0, left: 24),
                  child: TextView('Select Duration',
                      fontSize: 20, fontWeight: FontWeight.w500)),
              Padding(
                  padding:
                      const EdgeInsets.only(left: 24.0, right: 24.0, top: 16),
                  child: package(1, 'assets/Icons/chat.png', 'Messaging',
                      'Chat with Doctor', '\$20', '30 min')),
              Padding(
                  padding:
                      const EdgeInsets.only(left: 24.0, right: 24.0, top: 16),
                  child: package(2, 'assets/Icons/service.png', 'Voice Call',
                      'Call with Doctor', '\$20', '30 min')),
              Padding(
                  padding:
                      const EdgeInsets.only(left: 24.0, right: 24.0, top: 16),
                  child: package(3, 'assets/Icons/service.png', 'Video Call',
                      'VideoCall Doctor', '\$20', '30 min')),
              Padding(
                  padding: const EdgeInsets.only(left: 130.0, top: 248),
                  child: primaryButton(155, 44, Theme.of(context).primaryColor,
                      () {
                    Get.to(PatientDetail(),
                        transition: Transition.fadeIn,
                        curve: Curves.easeInCirc,
                        duration: Duration(milliseconds: 2000));
                  }, 'Next', AppColors.lightTextColor, 22))
            ]));
  }
}

Container package(
  int index,
  String path,
  String title,
  String description,
  String charge,
  String duration,
) {
  return Container(
      height: 68,
      width: 366,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        color: Colors.white,
      ),
      child: Row(children: [
        Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: RoundContainer(50, 50, path, () {})),
        Padding(
            padding: const EdgeInsets.only(left: 13.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextView(title, fontWeight: FontWeight.w500),
                  Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: TextView(description))
                ])),
        Padding(
            padding: const EdgeInsets.only(left: 60.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextView(charge,
                      fontWeight: FontWeight.w500,
                      textColor: AppColors.darkTextColor),
                  Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: TextView(duration))
                ]))
      ]));
}
