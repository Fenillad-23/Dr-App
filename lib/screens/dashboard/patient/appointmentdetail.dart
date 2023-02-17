import 'package:demo/controller/homepageController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../color/AppColor.dart';
import '../../../widget/TextView.dart';
import '../../../widget/appBar.dart';

class AppointmentDetails extends StatefulWidget {
  const AppointmentDetails({super.key});

  @override
  State<AppointmentDetails> createState() => _AppointmentDetailsState();
}

class _AppointmentDetailsState extends State<AppointmentDetails> {
  var name;
  List? doc;
  homepageController controller = Get.put(homepageController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    name = Get.arguments;
    setState(() {});
    get();
  }

  void get() async {
    for (int i = 0; i <= controller.doctorData.length; i++) {
      if (controller.doctorData[i]['name'] == name) {
        doc!.add(controller.doctorData[i]);
        setState(() {});
      }
      print(name);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.appBackground,
      appBar: Appbar('Appoinment Details'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Row(children: [
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('',
                              height: 102, width: 135, fit: BoxFit.fitWidth),
                        )
                      ],
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextView(
                                '',
                                fontSize: 18,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 6.0),
                                child: TextView(
                                  '',
                                  textColor: AppColors.shadowColor,
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: Row(children: [
                                    Icon(
                                      Icons.location_history_outlined,
                                      size: 15,
                                      color: AppColors.darkTextColor,
                                    ),
                                    Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: TextView(
                                          '',
                                          textColor: AppColors.shadowColor,
                                        ))
                                  ])),
                              Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: Row(children: [
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: Colors.yellow.shade700,
                                    ),
                                    Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: TextView(
                                          '',
                                          textColor: AppColors.shadowColor,
                                        ))
                                  ]))
                            ]))
                  ])))
        ],
      ),
    );
  }
}
