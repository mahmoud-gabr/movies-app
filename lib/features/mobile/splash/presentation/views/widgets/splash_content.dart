import 'package:flutter/material.dart';
import 'package:movies_app/core/widgets/slider_dots.dart';
import 'package:movies_app/features/mobile/splash/presentation/views/widgets/botton_column.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    super.key,
    required this.titles,
    required this.currentIndex,
    required this.subtitles,
  });

  final List<String> titles;
  final int currentIndex;
  final List<String> subtitles;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 150,
          ),
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
          SliderDots(currentIndex: currentIndex),
          const SizedBox(
            height: 60,
          ),
          Text(
            subtitles[currentIndex],
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          const BottonColumn(),
        ],
      ),
    );
  }
}