import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

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
              Image.asset('assets/images/slash_cover.png'),
              Image.asset('assets/images/slash_cover.png'),
              Image.asset('assets/images/slash_cover.png'),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  titles[currentIndex],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    3,
                    (index) => Container(
                      width: 10.0,
                      height: 10.0,
                      margin: const EdgeInsets.symmetric(horizontal: 4.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentIndex == index
                            ? Colors.white
                            : Colors.white.withOpacity(0.4),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Text(
                  subtitles[currentIndex],
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
                Text('button'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
