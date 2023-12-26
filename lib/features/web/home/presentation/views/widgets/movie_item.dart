import 'package:flutter/material.dart';

import '../../../../../../core/widgets/custom_fav_booton.dart';

class MovieItem extends StatelessWidget {
  const MovieItem({super.key, required this.width, required this.height});
  final double width;
  final double height;
  // final String imge;
  // final String name;
  // final String classification;
  // final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        width: 255,
        height: 301,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/mov_1.png'), fit: BoxFit.cover),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomFavBotton(
                      width: 32,
                      height: 32,
                      borderRadius: 8.3,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20),
                height: 86,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.9),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Tokyo Train',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '2022 | Action comedy',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ]),
              )
            ]),
      ),
    );
  }
}
