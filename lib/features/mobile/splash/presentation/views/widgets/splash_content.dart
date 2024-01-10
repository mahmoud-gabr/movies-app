import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_app/core/app_router_mobile.dart';
import 'package:movies_app/core/widgets/custoum_botton_app.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
          Center(
              child: AnimatedSmoothIndicator(
            activeIndex: currentIndex,
            count: 3,
          )),
          // SliderDots(currentIndex: currentIndex),
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
          SizedBox(
            height: 177,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomBottonApp(
                  isFilled: true,
                  onTap: () {
                    GoRouter.of(context).push(AppRoutersMoblile.kRegisterView);
                  },
                  text: 'Suscribete a movie+',
                ),
                CustomBottonApp(
                  isFilled: false,
                  onTap: () {
                    GoRouter.of(context).push(AppRoutersMoblile.kHomeView);
                  },
                  text: 'Ya te suscibiste a movie+',
                ),
                CustomBottonApp(
                  isFilled: false,
                  onTap: () {},
                  text: 'Iniciar sesion',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
