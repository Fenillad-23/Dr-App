import 'package:Dr.App/color/AppColor.dart';
import 'package:Dr.App/controller/homepageController.dart';
import 'package:Dr.App/screens/dashboard/doctor/selectpackage.dart';
import 'package:Dr.App/widget/TextView.dart';
import 'package:Dr.App/widget/appBar.dart';
import 'package:Dr.App/widget/primaryButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/appointmentController.dart';

class BookAppointment extends StatefulWidget {
  const BookAppointment({super.key});

  @override
  State<BookAppointment> createState() => _BookAppointmentState();
}

class _BookAppointmentState extends State<BookAppointment> {
  homepageController controller = Get.put(homepageController());
  BookAppointmentController appointmentController =
      Get.put(BookAppointmentController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.appBackground,
        appBar: Appbar('Book Appointment'),
        body: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Padding(
                  padding: const EdgeInsets.only(left: 24, top: 24),
                  child: TextView('Select Date',
                      fontSize: 20, fontWeight: FontWeight.w500)),
              Padding(
                  padding:
                      const EdgeInsets.only(left: 24.0, right: 24, top: 16),
                  child: Container(
                      height: 300,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [BoxShadow(color: AppColors.shadowColor)],
                          borderRadius: BorderRadius.circular(16)),
                      width: double.infinity,
                      child: CalendarDatePicker(
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate: DateTime.now().add(Duration(days: 30)),
                          onDateChanged: (DateTime value) {}))),
              Padding(
                  padding: const EdgeInsets.only(left: 24, top: 24),
                  child: TextView('Select Hour',
                      fontSize: 20, fontWeight: FontWeight.w500)),
              Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24, top: 16),
                  child: Container(
                      height: 200,
                      child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  mainAxisSpacing: 12,
                                  crossAxisSpacing: 12,
                                  childAspectRatio: 3),
                          itemCount: controller.HoursList.length,
                          shrinkWrap: true,
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shadowColor: AppColors.shadowColor,
                                    elevation: 1,
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(22)),
                                    ),
                                    backgroundColor:
                                        appointmentController.selected == index
                                            ? Colors.lightBlue.shade400
                                            : AppColors.textFieldColor),
                                onPressed: () {
                                  setState(() {
                                    appointmentController.changeState(index);
                                  });
                                },
                                child: TextView(
                                    controller.HoursList[index].toString(),
                                    textColor:
                                        appointmentController.selected == index
                                            ? AppColors.lightTextColor
                                            : AppColors.deepdarkTextColor));
                          }))),
              Padding(
                  padding: const EdgeInsets.only(top: 73, left: 130),
                  child: primaryButton(155, 44, Colors.transparent, () {
                    Get.to(SelectPackage(),
                        curve: Curves.easeInCirc,
                        transition: Transition.fade,
                        duration: Duration(milliseconds: 2000));
                  }, 'Next', AppColors.lightTextColor, 22))
            ])));
  }
}
