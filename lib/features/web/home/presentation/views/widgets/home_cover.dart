import 'package:flutter/material.dart';
import 'package:movies_app/core/widgets/custom_botton.dart';
import 'package:movies_app/core/widgets/custom_fav_booton.dart';
import 'package:movies_app/features/web/home/presentation/views/widgets/appbar.dart';

class HomeCover extends StatelessWidget {
  const HomeCover({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
          child: Container(
            padding: const EdgeInsets.all(30),
            height: 455,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/home_cover.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                SizedBox(
                  height: 150,
                ),
                Text(
                  'Insider',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '2022 | Comedy horror | 1 Season',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    CustomBotton(text: 'Watch now', width: 139),
                    SizedBox(
                      width: 25,
                    ),
                    CustomFavBotton(width: 54, height: 54),
                  ],
                )
              ],
            ),
          ),
        );
  }
}