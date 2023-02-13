import 'package:demo/controller/homepageController.dart';
import 'package:demo/widget/TextView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/roundContainer.dart';

class UserHome extends StatefulWidget {
  const UserHome({super.key});

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  homepageController controller = Get.put(homepageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
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
                      left: 71.03,
                    ),
                    child: Icon(
                      Icons.search,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.83, right: 25),
                    child: Icon(Icons.notifications_outlined),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 6),
              child: TextView('How are you today?'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 24, right: 24),
              child: Image.asset('assets/images/banner.png'),
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
              child: Row(
                children: [
                  Container(
                    height: 100,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.imageIcon.length,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          height: 74,
                          width: 74,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: RoundContainer(74, 74,
                                controller.imageIcon[index].toString(), () {}),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
