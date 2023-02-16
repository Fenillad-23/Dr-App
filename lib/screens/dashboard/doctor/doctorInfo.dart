import 'package:demo/controller/homepageController.dart';
import 'package:demo/screens/dashboard/doctor/bookappointment.dart';
import 'package:demo/widget/appBar.dart';
import 'package:demo/widget/primaryButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../color/AppColor.dart';
import '../../../widget/TextView.dart';
import '../../../widget/roundContainer.dart';

class DoctorInfo extends StatefulWidget {
  const DoctorInfo({super.key});

  @override
  State<DoctorInfo> createState() => _DoctorInfoState();
}

class _DoctorInfoState extends State<DoctorInfo> {
  homepageController controller = Get.put(homepageController());
  var index = Get.arguments;
  late int i;
  @override
  void initState() {
    super.initState();

    print('1xb\[097 ${index}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      appBar: Appbar('Doctor Details', [
        Padding(
          padding: const EdgeInsets.only(right: 24.0),
          child: Icon(
            Icons.bookmark_border_rounded,
            color: Colors.black,
          ),
        )
      ]),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: 280,
                decoration: BoxDecoration(
                    color: AppColors.appBackground,
                    boxShadow: [BoxShadow(color: Colors.grey)],
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 24.0),
                  child: Column(children: [
                    Container(
                        child: Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Row(children: [
                              Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(index[0]['img'],
                                        height: 102,
                                        width: 135,
                                        fit: BoxFit.fitWidth),
                                  )
                                ],
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(left: 18.0),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        TextView(
                                          index[0]['name'],
                                          fontSize: 18,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 6.0),
                                          child: TextView(
                                            index[0]['category'],
                                            textColor: AppColors.shadowColor,
                                          ),
                                        ),
                                        Padding(
                                            padding:
                                                const EdgeInsets.only(top: 4.0),
                                            child: Row(children: [
                                              Icon(
                                                Icons.location_history_outlined,
                                                size: 15,
                                                color: AppColors.darkTextColor,
                                              ),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0),
                                                  child: TextView(
                                                    index[0]['distance'],
                                                    textColor:
                                                        AppColors.shadowColor,
                                                  ))
                                            ])),
                                        Padding(
                                            padding:
                                                const EdgeInsets.only(top: 4.0),
                                            child: Row(children: [
                                              Icon(
                                                Icons.star,
                                                size: 15,
                                                color: Colors.yellow.shade700,
                                              ),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0),
                                                  child: TextView(
                                                    index[0]['rating'],
                                                    textColor:
                                                        AppColors.shadowColor,
                                                  ))
                                            ]))
                                      ]))
                            ]))),
                    Container(
                        height: 150,
                        child: ListView.builder(
                            shrinkWrap: true,
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: controller.docInfo.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                  padding: const EdgeInsets.only(
                                      left: 24.0, top: 16),
                                  child: SizedBox(
                                    height: 90,
                                    width: 83,
                                    child: Column(children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 16.0),
                                        child: RoundContainer(
                                            70,
                                            70,
                                            controller.docInfo[index]['img'],
                                            () {}),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 25, top: 8.0),
                                        child: TextView(
                                          controller.docInfo[index]['title']
                                              .toString(),
                                          fontSize: 14,
                                          textOverflow: TextOverflow.fade,
                                          textColor: AppColors.darkTextColor,
                                        ),
                                      ),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              left: 25, top: 2.0),
                                          child: TextView(
                                            controller.docInfo[index]
                                                    ['subTitle']
                                                .toString(),
                                            fontSize: 14,
                                            textOverflow: TextOverflow.fade,
                                            textColor: Colors.grey,
                                          )),
                                    ]),
                                  ));
                            }))
                  ]),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 16.0, left: 24),
              child: TextView(
                'About Doctor',
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0, left: 24, right: 24),
              child: TextView(
                index[0]['about'],
                textAlign: TextAlign.justify,
                textColor: Colors.grey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0, left: 24),
              child: TextView(
                'Work Time',
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0, left: 24, right: 24),
              child: Column(
                children: [
                  TextView(
                    index[0]['time'][0],
                    textAlign: TextAlign.justify,
                    textColor: Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 12.0,
                    ),
                    child: TextView(
                      index[0]['time'][1],
                      textAlign: TextAlign.justify,
                      textColor: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 122, left: 110),
                    child: primaryButton(
                        155, 44, Theme.of(context).primaryColor.withOpacity(.8),
                        () {
                      Get.to(BookAppointment());
                    }, 'Book Appointment', AppColors.lightTextColor, 22),
                  )
                ],
              ),
            )
          ]),
    );
  }
}
