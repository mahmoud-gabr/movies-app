import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/core/widgets/dark_background.dart';
import 'package:movies_app/core/widgets/slider_dots.dart';
import 'package:movies_app/features/mobile/home/presentation/views/widgets/home_appbar.dart';
import 'package:movies_app/features/mobile/home/presentation/views/widgets/home_stack_content.dart';

class SubHomeStack extends StatefulWidget {
  const SubHomeStack({super.key});

  @override
  State<SubHomeStack> createState() => _SubHomeStackState();
}

class _SubHomeStackState extends State<SubHomeStack> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
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
        ),
        const DarkBackground(),
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: HomeAppbar(),
        ),
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: SliderDots(
            currentIndex: currentIndex,
          ),
        ),
        const Positioned(
          right: 0,
          left: 0,
          top: 300,
          child: HomeStackContent(),
        ),
      ],
    );
  }
}
