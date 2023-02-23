import 'package:Dr.App/color/AppColor.dart';
import 'package:Dr.App/controller/appointmentController.dart';
import 'package:Dr.App/widget/EditText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widget/TextView.dart';
import '../../../widget/appBar.dart';
import '../../../widget/primaryButton.dart';
import 'appointmentdetail.dart';

class PatientDetail extends StatefulWidget {
  const PatientDetail({super.key});

  @override
  State<PatientDetail> createState() => _PatientDetailState();
}

class _PatientDetailState extends State<PatientDetail> {
  BookAppointmentController controller = Get.put(BookAppointmentController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: AppColors.appBackground,
        appBar: Appbar('Patient Details'),
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: const EdgeInsets.only(top: 16.0, left: 24),
              child: TextView('Full Name',
                  fontSize: 20, fontWeight: FontWeight.w500)),
          Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 12),
              child: EditText(
                  borderRadius: 8,
                  showRectangularInputBorder: true,
                  hint: 'Enter your Full Name',
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: AppColors.appBarColor, width: 2)),
                  fillColor: AppColors.appBarColor)),
          Padding(
              padding: const EdgeInsets.only(top: 16.0, left: 24),
              child: TextView('Gender',
                  fontSize: 20, fontWeight: FontWeight.w500)),
          Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24, top: 16),
              child: DropdownButtonFormField(
                  borderRadius: BorderRadius.circular(8),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors.appBarColor,
                      suffixIconColor: AppColors.darkTextColor),
                  hint: TextView('Select Gender'),
                  items: controller.gender
                      .map((e) => DropdownMenuItem(
                          value: e.toString(), child: TextView(e.toString())))
                      .toList(),
                  onChanged: ((value) {}))),
          Padding(
              padding: const EdgeInsets.only(top: 16.0, left: 24),
              child: TextView('Your Age',
                  fontSize: 20, fontWeight: FontWeight.w500)),
          Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24, top: 16),
              child: DropdownButtonFormField(
                  borderRadius: BorderRadius.circular(8),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors.appBarColor,
                      suffixIconColor: AppColors.darkTextColor),
                  hint: TextView('Select Age'),
                  items: List.generate(
                      100,
                      (index) => DropdownMenuItem(
                          value: index.toString(),
                          child: TextView(index.toString()))),
                  onChanged: ((value) {}))),
          Padding(
              padding: const EdgeInsets.only(top: 16.0, left: 24),
              child: TextView('Write your Problem',
                  fontSize: 20, fontWeight: FontWeight.w500)),
          Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24, top: 16),
              child: EditText(
                  borderRadius: 8,
                  maxLines: null,
                  minLines: 16,
                  hint: 'Enter Your Health Description',
                  showRectangularInputBorder: true,
                  inputType: TextInputType.multiline)),
          Padding(
              padding: const EdgeInsets.only(top: 64, left: 130),
              child: primaryButton(155, 44, Colors.transparent, () {
                Get.to(AppointmentDetails(),
                    curve: Curves.easeInCirc,
                    transition: Transition.fade,
                    duration: Duration(milliseconds: 2000));
              }, 'Next', AppColors.lightTextColor, 22))
        ])));
  }
}
