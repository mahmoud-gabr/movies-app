import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarsouelSlider extends StatefulWidget {
  const CarsouelSlider({
    super.key,
  });

  @override
  State<CarsouelSlider> createState() => _CarsouelSliderState();
}

class _CarsouelSliderState extends State<CarsouelSlider> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Image.asset(
          'assets/images/viking.png',
          width: double.infinity,
          height: double.infinity,
        ),
        Image.asset(
          'assets/images/slash_cover.png',
          width: double.infinity,
          height: double.infinity,
        ),
        Image.asset(
          'assets/images/slash_cover.png',
          width: double.infinity,
          height: double.infinity,
        ),
      ],
      options: CarouselOptions(
        height: double.infinity,
        viewportFraction: 1,
        onPageChanged: (index, reason) {
          setState(
            () {
              currentIndex = index;
            },
          );
        },
      ),
    );
  }
}