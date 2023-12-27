import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/core/widgets/dark_background.dart';
import 'package:movies_app/features/mobile/splash/presentation/views/widgets/splash_content.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  int currentIndex = 0;
  List<String> titles = [
    'TENEMOS LAS MEJORES PELICULAS',
    'UYD',
    'Dragon Never Die'
  ];
  List<String> subtitles = [
    'Lorem ipsum dolor sit amet consectetur. Sed egestas mi hac faucibus vitae commodo. Tempor sagittis elementum suspendisse est convallis morbi. Quam viverra sed bibendum id felis dictum ',
    'Subtitle 2',
    'Subtitle 3'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CarouselSlider(
            items: [
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
          SplashContent(titles: titles, currentIndex: currentIndex, subtitles: subtitles),
        ],
      ),
    );
  }


}


