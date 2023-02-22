import 'package:Dr.App/color/AppColor.dart';
import 'package:Dr.App/widget/AssetIcon.dart';
import 'package:Dr.App/widget/TextView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widget/appBar.dart';
import 'editprofile.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.appBackground,
        appBar: Appbar('Profile'),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Stack(children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset('assets/images/user.png',
                        height: 95, width: 95)),
                Positioned(
                    top: 70,
                    left: 70,
                    child: Image.asset('assets/Icons/Camera.png',
                        height: 23, width: 23))
              ])),
              Padding(
                  padding: const EdgeInsets.only(top: 17.0),
                  child: Center(
                      child: TextView('Ady Rawinda',
                          fontSize: 20, fontWeight: FontWeight.w500))),
              Padding(
                  padding:
                      const EdgeInsets.only(left: 24.0, right: 24.0, top: 28),
                  child: Column(children: [
                    GestureDetector(
                        onTap: () => Get.to(EditProfile()),
                        child: card('assets/Icons/edit.png', 'Edit Profile')),
                    GestureDetector(
                        child: card('assets/Icons/save.png', 'Saved Doctors')),
                    GestureDetector(
                        child: card(
                            'assets/Icons/wallet.png', 'Payments Methods')),
                    GestureDetector(
                        child: card('assets/Icons/exclamation.png',
                            'Terms & Conditions')),
                    GestureDetector(
                        child: card('assets/Icons/rate.png', 'Rate App')),
                    GestureDetector(
                        child: card('assets/Icons/signout.png', 'Logout')),
                  ]))
            ]));
  }

  Container card(String path, String title) {
    return Container(
        height: 65,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(9)),
        child: Card(
            elevation: 2,
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: AssetIcon(path, size: 10),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: TextView(title))
            ])));
  }
}
