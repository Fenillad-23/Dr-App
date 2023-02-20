import 'package:flutter/material.dart';
import 'package:get/get.dart';

class chatController extends GetxController {
  ScrollController scrollController = ScrollController();
  TextEditingController sendMessage = TextEditingController();
  List messages = [
    {"messageContent": "Hello ", "messageType": "receiver"},
    {"messageContent": "what's up", "messageType": "receiver"},
    {"messageContent": "nothing special", "messageType": "sender"},
    {"messageContent": "ehhhh, doing OK.", "messageType": "receiver"},
    {"messageContent": "Is there any thing wrong?", "messageType": "sender"},
  ];
  send() async {
    messages.add({
      "messageContent": sendMessage.text.toString(),
      "messageType": "sender"
    });
    sendMessage.clear();
  }
}
