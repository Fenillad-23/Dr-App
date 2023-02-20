import 'package:demo/widget/TextView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../color/AppColor.dart';
import '../../../widget/appBar.dart';
import '../../../widget/primaryButton.dart';
import '../homepage.dart';

class VoiceCall extends StatefulWidget {
  const VoiceCall({super.key});

  @override
  State<VoiceCall> createState() => _VideoCallState();
}

class _VideoCallState extends State<VoiceCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      appBar: Appbar('Dr Rana', [
        Center(
          child: IconButton(
            onPressed: (() {}),
            icon: Icon(
              Icons.call_outlined,
              color: AppColors.darkTextColor,
            ),
          ),
        ),
        Center(
          child: IconButton(
            icon: Icon(Icons.video_call_outlined),
            color: AppColors.darkTextColor,
            onPressed: () {},
          ),
        )
      ]),
      body: Stack(children: [
        Positioned(
          top: 114,
          left: 133,
          right: 133,
          child: Container(
              decoration: BoxDecoration(shape: BoxShape.circle),
              height: 135,
              width: 131,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(125),
                child: Image.asset(
                  'assets/doctors/doctor4.png',
                  fit: BoxFit.cover,
                ),
              )),
        ),
        Positioned(
          top: 525,
          left: 120,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextView(
                    '00.02.50',
                    textColor: AppColors.shadowColor,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: IconButton(
                          icon: Icon(Icons.video_call, color: Colors.blue),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: IconButton(
                          icon: Icon(Icons.call, color: Colors.blue),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: IconButton(
                            icon: Icon(Icons.speaker_group, color: Colors.blue),
                            onPressed: () {},
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: primaryButton(
                    155, 44, Theme.of(context).primaryColor.withOpacity(.8),
                    () {
                  Get.to(HomePage());
                }, 'End Call', AppColors.lightTextColor, 22),
              )
            ],
          ),
        )
      ]),
    );
  }
}
