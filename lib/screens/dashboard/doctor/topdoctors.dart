import 'package:Dr.App/color/AppColor.dart';
import 'package:Dr.App/controller/homepageController.dart';
import 'package:Dr.App/widget/appBar.dart';
import 'package:Dr.App/widget/primaryButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widget/customTile.dart';

class TopDoctors extends StatefulWidget {
  const TopDoctors({super.key});

  @override
  State<TopDoctors> createState() => _TopDoctorsState();
}

class _TopDoctorsState extends State<TopDoctors> {
  homepageController controller = Get.put(homepageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      appBar: Appbar('Top Doctors'),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            DoctorListView(
              controller.doctorData,
              primaryButton(
                  113,
                  28,
                  Theme.of(context).primaryColor.withOpacity(.8),
                  () {},
                  'Appointment',
                  AppColors.lightTextColor,
                  22),
              controller.doctorData.length,
            )
          ],
        ),
      ),
    );
  }
}
