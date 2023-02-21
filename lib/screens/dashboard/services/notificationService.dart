import 'package:Dr.App/color/AppColor.dart';
import 'package:Dr.App/controller/homepageController.dart';
import 'package:Dr.App/widget/TextView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widget/appBar.dart';

class notification extends StatefulWidget {
  notification({super.key});

  @override
  State<notification> createState() => _NotificationServiceState();
}

class _NotificationServiceState extends State<notification> {
  homepageController controller = Get.put(homepageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar('Notifications', [
        // IconButton(
        //   icon: Icon(
        //     Icons.more_vert,
        //     color: Colors.black,
        //   ),
        //   onPressed: () {
        //     Pop
        //   },
        // )
        PopupMenuButton(
          child: Icon(
            Icons.more_vert,
            color: Colors.black,
          ),
          color: AppColors.appBarColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          enabled: true,
          initialValue: -1,
          // onSelected: (value) {
          //   clear();
          // },
          itemBuilder: (context) => <PopupMenuEntry>[
            PopupMenuItem(
              enabled: true,
              child: GestureDetector(
                  onTap: () {
                    clear();
                    setState(() {});
                  },
                  child: TextView('Clear Notifications')),
            )
          ],
        )
      ]),
      body: Column(
        children: [
          ListView.builder(
            itemCount: controller.docInfo.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                height: 70,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Card(
                  elevation: 1,
                  child: ListTile(
                    style: ListTileStyle.drawer,
                    leading: CircleAvatar(
                        child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                          controller.doctorData[index]['img'].toString()),
                    )),
                    title: TextView('You have successfully deleted package'),
                  ),
                ),
              );
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chat_bubble_outline),
      ),
    );
  }

  clear() {
    return Get.defaultDialog(
        middleText: 'Are You sure you want to clear All Notifications?',
        textConfirm: 'Clear',
        textCancel: 'Cancel');
  }
}
