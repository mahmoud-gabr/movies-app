import 'package:flutter/material.dart';
import 'package:movies_app/core/widgets/dark_background.dart';
import 'package:movies_app/features/mobile/home/presentation/views/widgets/series_appbar.dart';

class SeriesView extends StatelessWidget {
  const SeriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 463,
            width: double.infinity,
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/series1.png',
                  height: 463,
                  width: double.infinity,
                ),
                const DarkBackground(),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: SeriesAppBar(),
                ),
                Positioned(
                  top: 320,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Los Miserables',
                          style: TextStyle(fontSize: 30),
                        ),
                        const SizedBox(
                          width: 183,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '1H 52MIN',
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                '13+',
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                '2012',
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                '4K UHD',
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 60, //sdfghjgfdfg
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.play_circle_outline,
                                size: 50,
                              ),
                              SizedBox(
                                width: 73,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.add,
                                      size: 35,
                                    ),
                                    Icon(
                                      Icons.download,
                                      size: 35,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
