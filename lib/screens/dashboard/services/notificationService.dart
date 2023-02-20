import 'package:demo/controller/homepageController.dart';
import 'package:demo/widget/TextView.dart';
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
      appBar: Appbar('Notifications'),
      body: Column(
        children: [
          ListView.builder(
            itemCount: controller.docInfo.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Card(
                  elevation: 2,
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
}
