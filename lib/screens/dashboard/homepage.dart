import 'package:demo/screens/authentication/forgot%20password/resetPassword.dart';
import 'package:demo/screens/authentication/signup.dart';
import 'package:demo/screens/dashboard/usehome.dart';
import 'package:flutter/material.dart';

import '../../color/AppColor.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int indexPage = 0;
  List screens = <Widget>[UserHome(), SignUp(), ResetPassword()];
  redirect(int i) {
    setState(() {
      indexPage = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBody: true,
      backgroundColor: AppColors.appBackground,
      body: screens.elementAt(indexPage),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12), topRight: Radius.circular(12)),
        child: BottomNavigationBar(
          iconSize: 24,
          type: BottomNavigationBarType.fixed,
          elevation: 3,
          backgroundColor: Colors.white,
          enableFeedback: true,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.message_outlined), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today_outlined), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outlined), label: ''),
          ],
          onTap: (value) {
            setState(() {
              indexPage = value;
            });
          },
          currentIndex: indexPage,
          selectedItemColor: Colors.blue,
        ),
      ),
    );
  }
}
