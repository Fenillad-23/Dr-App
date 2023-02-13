import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class slider extends StatefulWidget {
  const slider({super.key});

  @override
  State<slider> createState() => _sliderState();
}

class _sliderState extends State<slider> {
  List imgs = [
    'https://images.pexels.com/photos/15114576/pexels-photo-15114576.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/792381/pexels-photo-792381.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/7013617/pexels-photo-7013617.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CarouselSlider.builder(
                itemCount: imgs.length,
                itemBuilder: (context, index, realIndex) {
                  return Image.network(
                    imgs[index].toString(),
                    fit: BoxFit.fill,
                  );
                },
                options: CarouselOptions(
                  autoPlay: true,
                  initialPage: 0,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ))
          ],
        ),
      ),
    );
  }
}
