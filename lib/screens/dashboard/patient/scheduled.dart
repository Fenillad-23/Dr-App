import 'package:Dr.App/color/AppColor.dart';
import 'package:Dr.App/widget/AssetIcon.dart';
import 'package:Dr.App/widget/TextView.dart';
import 'package:Dr.App/widget/primaryButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/homepageController.dart';
import '../../../widget/appBar.dart';

class Scheduled extends StatefulWidget {
  const Scheduled({super.key});

  @override
  State<Scheduled> createState() => _ScheduledState();
}

class _ScheduledState extends State<Scheduled> {
  homepageController controller = Get.put(homepageController());
  bool? selected;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            backgroundColor: AppColors.appBackground,
            appBar: Appbar('Scheduled'),
            body: SingleChildScrollView(
                child: Column(children: [
              Container(
                  height: 45,
                  child: Padding(
                      padding: const EdgeInsets.only(
                          top: 24.0, left: 24, right: 23.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                                child: TextView('Upcoming'), onTap: (() {})),
                            InkWell(
                                child: TextView('Completed'), onTap: (() {})),
                            InkWell(child: TextView('Canceled'), onTap: (() {}))
                          ]))),
              Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, right: 15.0, top: 24),
                  child: Container(
                      height: 200,
                      width: double.infinity,
                      child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          color: Colors.white,
                          elevation: 1,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(children: [
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15.0, top: 15),
                                      child: CircleAvatar(
                                          child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                              child: Image.asset(controller
                                                  .doctorData[0]['img']
                                                  .toString())))),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          top: 15.0, left: 8),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            TextView(
                                                controller.doctorData[0]
                                                    ['name'],
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500),
                                            Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 6.0),
                                                child: TextView(controller
                                                    .doctorData[0]['category']))
                                          ]))
                                ]),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 20.0, right: 10),
                                    child: Row(children: [
                                      CircleAvatar(
                                          backgroundColor:
                                              AppColors.appBackground,
                                          child: AssetIcon(
                                              'assets/images/calendar.png',
                                              size: 12)),
                                      Padding(
                                          padding:
                                              const EdgeInsets.only(left: 5.0),
                                          child: TextView('13-09-2022')),
                                      Padding(
                                          padding:
                                              const EdgeInsets.only(left: 5.0),
                                          child: CircleAvatar(
                                              backgroundColor:
                                                  AppColors.appBackground,
                                              child: AssetIcon(
                                                  'assets/images/timecheck.png',
                                                  size: 12))),
                                      Padding(
                                          padding:
                                              const EdgeInsets.only(left: 5.0),
                                          child: TextView('10:00 AM')),
                                      Padding(
                                          padding:
                                              const EdgeInsets.only(left: 5.0),
                                          child: CircleAvatar(
                                              backgroundColor:
                                                  AppColors.appBackground,
                                              child: AssetIcon(
                                                  'assets/images/check.png',
                                                  size: 12))),
                                      Padding(
                                          padding:
                                              const EdgeInsets.only(left: 5.0),
                                          child: TextView('Confirmed'))
                                    ])),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 10.0,
                                        left: 16,
                                        right: 16,
                                        top: 20),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          primaryButton(
                                              150,
                                              44,
                                              AppColors.appBackground,
                                              () {},
                                              'Cancel',
                                              AppColors.shadowColor,
                                              22,
                                              AppColors.shadowColor),
                                          primaryButton(
                                              150,
                                              44,
                                              Theme.of(context).primaryColor,
                                              () {},
                                              'Edit',
                                              AppColors.lightTextColor,
                                              22)
                                        ]))
                              ])))),
              Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, right: 15.0, top: 24),
                  child: Container(
                      height: 200,
                      width: double.infinity,
                      child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          color: Colors.white,
                          elevation: 1,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(children: [
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15.0, top: 15),
                                      child: CircleAvatar(
                                        child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            child: Image.asset(controller
                                                .doctorData[1]['img']
                                                .toString())),
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          top: 15.0, left: 8),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            TextView(
                                                controller.doctorData[1]
                                                    ['name'],
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500),
                                            Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 6.0),
                                                child: TextView(controller
                                                    .doctorData[1]['category']))
                                          ]))
                                ]),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 20.0, right: 10),
                                    child: Row(children: [
                                      CircleAvatar(
                                          backgroundColor:
                                              AppColors.appBackground,
                                          child: AssetIcon(
                                              'assets/images/calendar.png',
                                              size: 12)),
                                      Padding(
                                          padding:
                                              const EdgeInsets.only(left: 5.0),
                                          child: TextView('13-09-2022')),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 5.0),
                                        child: CircleAvatar(
                                            backgroundColor:
                                                AppColors.appBackground,
                                            child: AssetIcon(
                                                'assets/images/timecheck.png',
                                                size: 12)),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 5.0),
                                        child: TextView('10:00 AM'),
                                      ),
                                      Padding(
                                          padding:
                                              const EdgeInsets.only(left: 5.0),
                                          child: CircleAvatar(
                                              backgroundColor:
                                                  AppColors.appBackground,
                                              child: AssetIcon(
                                                  'assets/images/check.png',
                                                  size: 12))),
                                      Padding(
                                          padding:
                                              const EdgeInsets.only(left: 5.0),
                                          child: TextView('Confirmed'))
                                    ])),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 10.0,
                                        left: 16,
                                        right: 16,
                                        top: 20),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          primaryButton(
                                              150,
                                              44,
                                              AppColors.appBackground,
                                              () {},
                                              'Cancel',
                                              AppColors.shadowColor,
                                              22,
                                              AppColors.shadowColor),
                                          primaryButton(
                                              150,
                                              44,
                                              Theme.of(context).primaryColor,
                                              () {},
                                              'Edit',
                                              AppColors.lightTextColor,
                                              22)
                                        ]))
                              ])))),
              Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, right: 15.0, top: 24),
                  child: Container(
                      height: 200,
                      width: double.infinity,
                      child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          color: Colors.white,
                          elevation: 1,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(children: [
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15.0, top: 15),
                                      child: CircleAvatar(
                                          child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                              child: Image.asset(controller
                                                  .doctorData[2]['img']
                                                  .toString())))),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          top: 15.0, left: 8),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            TextView(
                                                controller.doctorData[2]
                                                    ['name'],
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500),
                                            Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 6.0),
                                                child: TextView(controller
                                                    .doctorData[0]['category']))
                                          ]))
                                ]),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 20.0, right: 10),
                                    child: Row(children: [
                                      CircleAvatar(
                                          backgroundColor:
                                              AppColors.appBackground,
                                          child: AssetIcon(
                                              'assets/images/calendar.png',
                                              size: 12)),
                                      Padding(
                                          padding:
                                              const EdgeInsets.only(left: 5.0),
                                          child: TextView('13-09-2022')),
                                      Padding(
                                          padding:
                                              const EdgeInsets.only(left: 5.0),
                                          child: CircleAvatar(
                                              backgroundColor:
                                                  AppColors.appBackground,
                                              child: AssetIcon(
                                                  'assets/images/timecheck.png',
                                                  size: 12))),
                                      Padding(
                                          padding:
                                              const EdgeInsets.only(left: 5.0),
                                          child: TextView('10:00 AM')),
                                      Padding(
                                          padding:
                                              const EdgeInsets.only(left: 5.0),
                                          child: CircleAvatar(
                                              backgroundColor:
                                                  AppColors.appBackground,
                                              child: AssetIcon(
                                                  'assets/images/check.png',
                                                  size: 12))),
                                      Padding(
                                          padding:
                                              const EdgeInsets.only(left: 5.0),
                                          child: TextView('Confirmed'))
                                    ])),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 10.0,
                                        left: 16,
                                        right: 16,
                                        top: 20),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          primaryButton(
                                              150,
                                              44,
                                              AppColors.appBackground,
                                              () {},
                                              'Cancel',
                                              AppColors.shadowColor,
                                              22,
                                              AppColors.shadowColor),
                                          primaryButton(
                                              150,
                                              44,
                                              Theme.of(context).primaryColor,
                                              () {},
                                              'Edit',
                                              AppColors.lightTextColor,
                                              22)
                                        ]))
                              ]))))
            ]))));
  }
}
