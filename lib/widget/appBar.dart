import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../color/AppColor.dart';
import 'TextView.dart';

AppBar Appbar(String? title, [List<Widget>? actions]) {
  return AppBar(
    backgroundColor: AppColors.appBarColor,
    elevation: 0,
    shadowColor: AppColors.shadowColor,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back,
        color: AppColors.darkIconColor,
      ),
      onPressed: () {
        Get.back();
      },
    ),
    title: Padding(
      padding: EdgeInsets.only(left: 100.0),
      child: TextView(
        '$title',
        textColor: AppColors.deepdarkTextColor,
      ),
    ),
    actions: actions,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
    ),
  );
}
