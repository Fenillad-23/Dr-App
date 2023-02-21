import 'package:Dr.App/widget/EditTextSearch.dart';
import 'package:Dr.App/widget/appBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../color/AppColor.dart';
import '../../../controller/homepageController.dart';
import '../../../widget/TextView.dart';
import '../../../widget/customTile.dart';
import '../../../widget/primaryButton.dart';
import '../../../widget/roundContainer.dart';

class SearchDoctor extends StatefulWidget {
  const SearchDoctor({super.key});

  @override
  State<SearchDoctor> createState() => _SearchDoctorState();
}

class _SearchDoctorState extends State<SearchDoctor> {
  homepageController controller = Get.put(homepageController());
  ScrollController _controller = ScrollController();
  var i = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      appBar: Appbar('', [
        Padding(
          padding:
              const EdgeInsets.only(top: 5.0, right: 20, left: 24, bottom: 2),
          child: Container(
            width: 340,
            // color: Colors.blue,
            child: EditTextSearch(
              hint: 'Let\'s find your doctor',
              showBorder: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.blue, width: 1.0)),
              suffixIcon: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
          ),
        )
      ]),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 16),
            child: Container(
              height: 120,
              child: ListView.builder(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: controller.imageIcon.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 90,
                    width: 83,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: RoundContainer(
                              70,
                              70,
                              controller.imageIcon[index]['img'].toString(),
                              () {}),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 16.0),
                          child: TextView(
                            controller.imageIcon[index]['Category'].toString(),
                            fontSize: 14,
                            textOverflow: TextOverflow.fade,
                            textColor: AppColors.shadowColor,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: SizedBox(
              height: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: TextView(
                      'Recommended Doctors',
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: DoctorListView(
              controller.doctorData,
              primaryButton(
                  113,
                  28,
                  Theme.of(context).primaryColor.withOpacity(.8),
                  () {},
                  'Appointment',
                  AppColors.lightTextColor,
                  25),
              controller.doctorData.length,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: TextView(
                    'Your Recent Doctors',
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 24),
            child: SizedBox(
              width: double.infinity,
              height: 100,
              child: Row(
                children: [
                  ListView(
                    controller: _controller,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.asset(
                                  controller.doctorData[0]['img'],
                                ),
                              ),
                            ),
                            Text(controller.doctorData[0]['title'])
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.asset(
                                  controller.doctorData[1]['img'],
                                ),
                              ),
                            ),
                            Text(controller.doctorData[1]['name'])
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.asset(
                                  controller.doctorData[2]['img'],
                                ),
                              ),
                            ),
                            Text(controller.doctorData[2]['name'])
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
