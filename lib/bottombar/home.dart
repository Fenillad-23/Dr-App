import 'package:flutter/material.dart';

import '../imgSlider.dart';
import '../preview.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int indexPage = 0;
  List screens = [slider(), preview()];
  void redirect(int i) {
    setState(() {
      indexPage = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens.elementAt(indexPage),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 3,
        enableFeedback: true,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.blue[300],
              icon: Icon(Icons.slideshow_rounded),
              label: 'slideshow'),
          BottomNavigationBarItem(icon: Icon(Icons.preview), label: 'preview'),
        ],
        currentIndex: indexPage,
        onTap: redirect,
      ),
    );
  }
}
