import 'package:carousel_slider/carousel_slider.dart';
import 'package:demo/color/AppColor.dart';
import 'package:demo/controller/homepageController.dart';
import 'package:demo/screens/dashboard/doctor/topdoctors.dart';
import 'package:demo/widget/TextView.dart';
import 'package:demo/widget/customTile.dart';
import 'package:demo/widget/primaryButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/roundContainer.dart';
import 'doctor/bookappointment.dart';
import 'doctor/searchdoctor.dart';

class UserHome extends StatefulWidget {
  const UserHome({super.key});

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  homepageController controller = Get.put(homepageController());
  ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 53.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: TextView(
                      'Find your health solution!',
                      fontStyle: FontStyle.italic,
                      fontSize: 20,
                      wordSpacing: 1,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 60.03,
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.search,
                      ),
                      onPressed: () {
                        Get.to(SearchDoctor());
                      },
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.notifications_outlined),
                    onPressed: () {},
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 6),
              child: TextView('How are you today?'),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 24,
              ),
              child: CarouselSlider(
                  items: [
                    Image.asset('assets/images/banner.png'),
                    Image.asset('assets/images/banner.png')
                  ],
                  options: CarouselOptions(
                    autoPlay: true,
                    initialPage: 0,
                    autoPlayCurve: Curves.easeInCubic,
                    pauseAutoPlayOnTouch: true,
                    enlargeCenterPage: true,
                    animateToClosest: true,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24.0, left: 24),
              child: TextView(
                'Category',
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 16),
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
                            padding: const EdgeInsets.only(left: 25, top: 16.0),
                            child: TextView(
                              controller.imageIcon[index]['Category']
                                  .toString(),
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
                        'Top Doctors',
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 24),
                      child: GestureDetector(
                        onTap: () {
                          Get.to(() => TopDoctors());
                        },
                        child: TextView(
                          'View All',
                          textColor: AppColors.shadowColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            DoctorListView(
              controller.doctorData,
              primaryButton(
                  113, 28, Theme.of(context).primaryColor.withOpacity(.8), () {
                Get.to(BookAppointment());
              }, 'Appointment', AppColors.lightTextColor, 25),
              3,
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
                              Text(controller.doctorData[0]['name'])
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
          ],
        ),
      ),
    );
  }
}
