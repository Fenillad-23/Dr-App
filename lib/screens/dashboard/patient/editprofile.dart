import 'package:Dr.App/color/AppColor.dart';
import 'package:flutter/material.dart';
import '../../../widget/EditText.dart';
import '../../../widget/TextView.dart';
import '../../../widget/appBar.dart';
import '../../../widget/primaryButton.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.appBackground,
        appBar: Appbar('Edit Profile'),
        body: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Padding(
                  padding: const EdgeInsets.only(left: 24.0, top: 24),
                  child: TextView('Full Name',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      textColor: AppColors.deepdarkTextColor)),
              Padding(
                  padding:
                      const EdgeInsets.only(left: 24.0, top: 12, right: 24.0),
                  child: EditText(
                      hint: 'Enter your Name',
                      filled: true,
                      fillColor: AppColors.appBarColor,
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blue, width: 1.0)),
                      borderRadius: 8)),
              Padding(
                  padding: const EdgeInsets.only(left: 24.0, top: 24),
                  child: TextView('Email Id',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      textColor: AppColors.deepdarkTextColor)),
              Padding(
                  padding:
                      const EdgeInsets.only(left: 24.0, top: 12, right: 24.0),
                  child: EditText(
                      hint: 'Enter your Email Id',
                      filled: true,
                      fillColor: AppColors.appBarColor,
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blue, width: 1.0)),
                      borderRadius: 8)),
              Padding(
                  padding: const EdgeInsets.only(left: 24.0, top: 24),
                  child: TextView('Phone Number',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      textColor: AppColors.deepdarkTextColor)),
              Padding(
                  padding:
                      const EdgeInsets.only(left: 24.0, top: 12, right: 24.0),
                  child: EditText(
                      hint: 'Enter your Phone Number',
                      filled: true,
                      fillColor: AppColors.appBarColor,
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blue, width: 1.0)),
                      borderRadius: 8)),
              Padding(
                  padding: const EdgeInsets.only(left: 24.0, top: 24),
                  child: TextView('Profession',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      textColor: AppColors.deepdarkTextColor)),
              Padding(
                  padding:
                      const EdgeInsets.only(left: 24.0, top: 12, right: 24.0),
                  child: EditText(
                      hint: 'Enter your Profession',
                      filled: true,
                      fillColor: AppColors.appBarColor,
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blue, width: 1.0)),
                      borderRadius: 8)),
              Padding(
                  padding: const EdgeInsets.only(left: 24.0, top: 24),
                  child: TextView('Address',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      textColor: AppColors.deepdarkTextColor)),
              Padding(
                  padding:
                      const EdgeInsets.only(left: 24.0, top: 12, right: 24.0),
                  child: EditText(
                      hint: 'Enter your Address',
                      filled: true,
                      fillColor: AppColors.appBarColor,
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blue, width: 1.0)),
                      borderRadius: 8)),
              Padding(
                  padding: const EdgeInsets.only(left: 24.0, top: 24),
                  child: TextView('Change Password',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      textColor: AppColors.deepdarkTextColor)),
              Padding(
                  padding:
                      const EdgeInsets.only(left: 24.0, top: 12, right: 24.0),
                  child: EditText(
                      hint: 'Enter your Password',
                      filled: true,
                      fillColor: AppColors.appBarColor,
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blue, width: 1.0)),
                      borderRadius: 8)),
              Padding(
                  padding:
                      const EdgeInsets.only(left: 130.0, right: 129, top: 104),
                  child: primaryButton(
                    150,
                    44,
                    Theme.of(context).primaryColor,
                    () {},
                    'Save',
                    AppColors.lightTextColor,
                    22,
                  ))
            ])));
  }
}
