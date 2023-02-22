import 'package:Dr.App/color/AppColor.dart';
import 'package:Dr.App/screens/dashboard/services/chatService.dart';
import 'package:Dr.App/widget/TextView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/homepageController.dart';
import '../../../widget/appBar.dart';

class PackageList extends StatefulWidget {
  const PackageList({super.key});

  @override
  State<PackageList> createState() => _PackageListState();
}

class _PackageListState extends State<PackageList> {
  homepageController controller = Get.put(homepageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.appBackground,
        appBar: Appbar('Select Package',
            [Icon(Icons.search_rounded, color: Colors.black)]),
        body: ListView.builder(
            itemCount: controller.doctorData.length,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                      onTap: () {
                        Get.to(DoctorChat());
                      },
                      leading: CircleAvatar(
                          child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                            controller.doctorData[index]['img'].toString()),
                      )),
                      title: TextView(controller.doctorData[index]['name']),
                      subtitle: TextView(controller.doctorData[index]['about'],
                          maxLines: 1),
                      trailing: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextView('10.28'),
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 10,
                                  child: TextView('1'),
                                ))
                          ])));
            }));
  }
}
