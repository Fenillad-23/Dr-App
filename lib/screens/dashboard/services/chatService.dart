import 'package:Dr.App/color/AppColor.dart';
import 'package:Dr.App/controller/chatController.dart';
import 'package:Dr.App/screens/dashboard/services/videoCallService.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widget/EditText.dart';
import '../../../widget/appBar.dart';
import 'callService.dart';

class DoctorChat extends StatefulWidget {
  const DoctorChat({super.key});

  @override
  State<DoctorChat> createState() => _DoctorChatState();
}

class _DoctorChatState extends State<DoctorChat> {
  chatController controller = Get.put(chatController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.appBackground,
        appBar: Appbar('Dr Rana', [
          Center(
              child: IconButton(
                  onPressed: (() {
                    Get.to(VoiceCall(),
                        curve: Curves.easeInCirc,
                        transition: Transition.fade,
                        duration: Duration(milliseconds: 2000));
                  }),
                  icon: Icon(Icons.call_outlined,
                      color: AppColors.darkTextColor))),
          Center(
              child: IconButton(
                  icon: Icon(Icons.video_call_outlined),
                  color: AppColors.darkTextColor,
                  onPressed: () {
                    Get.to(VideoCall(),
                        transition: Transition.fade,
                        curve: Curves.easeInCirc,
                        duration: Duration(milliseconds: 2000));
                  }))
        ]),
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(children: <Widget>[
              Expanded(
                  child: ListView.builder(
                      controller: controller.scrollController,
                      shrinkWrap: true,
                      itemCount: controller.messages.length + 1,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        if (index == controller.messages.length) {
                          return Container(height: 70);
                        }
                        return Container(
                            width: 100,
                            padding: EdgeInsets.only(
                                left: 16, right: 16, top: 10, bottom: 10),
                            child: Align(
                                alignment: (controller.messages[index]
                                            ['messageType'] ==
                                        "receiver"
                                    ? Alignment.topLeft
                                    : Alignment.topRight),
                                child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: controller.messages[index]
                                                      ["messageType"] ==
                                                  "receiver"
                                              ? Radius.circular(0)
                                              : Radius.circular(16),
                                          topRight: controller.messages[index]
                                                      ["messageType"] ==
                                                  "receiver"
                                              ? Radius.circular(16)
                                              : Radius.circular(0),
                                          bottomLeft: Radius.circular(16),
                                          bottomRight: Radius.circular(16)),
                                      color: (controller.messages[index]
                                                  ["messageType"] ==
                                              "receiver"
                                          ? Colors.white
                                          : Color.fromARGB(255, 32, 134, 217)),
                                    ),
                                    padding: EdgeInsets.all(16),
                                    child: Text(
                                      controller.messages[index]
                                          ['messageContent'],
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: controller.messages[index]
                                                      ['messageType'] ==
                                                  "receiver"
                                              ? Colors.black
                                              : Colors.white),
                                    ))));
                      })),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      height: 90,
                      width: double.infinity,
                      color: Colors.transparent,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                                height: 50,
                                // width: double.infinity,
                                child: Row(children: <Widget>[
                                  Padding(
                                      padding:
                                          const EdgeInsets.only(left: 12.0),
                                      child: Container(
                                          width: 350,
                                          child: EditText(
                                              controller:
                                                  controller.sendMessage,
                                              hint: 'Type Message',
                                              suffixIcon: Icon(Icons.ios_share),
                                              filled: true,
                                              fillColor: AppColors.appBarColor,
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.blue,
                                                      width: 1.0)),
                                              borderRadius: 8))),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 4.0),
                                      child: Container(
                                        height: 45,
                                        width: 45,
                                        decoration: BoxDecoration(),
                                        child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    AppColors.appBarColor),
                                            onPressed: () {
                                              controller.scrollController
                                                  .animateTo(
                                                      controller
                                                          .scrollController
                                                          .position
                                                          .maxScrollExtent,
                                                      duration:
                                                          Duration(seconds: 1),
                                                      curve: Curves
                                                          .linearToEaseOut);
                                              controller.send();
                                              setState(() {});
                                            },
                                            child: Icon(Icons.send_rounded,
                                                color: Colors.blue)),
                                      ))
                                ]))
                          ])))
            ])));
  }
}
