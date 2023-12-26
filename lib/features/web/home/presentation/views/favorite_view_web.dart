import 'package:flutter/material.dart';
import 'package:movies_app/features/web/home/presentation/views/widgets/appbar.dart';
import 'package:movies_app/features/web/home/presentation/views/widgets/movie_item.dart';
import 'package:movies_app/features/web/home/presentation/views/widgets/slide_bar.dart';

class FavoriteViewWeb extends StatelessWidget {
  const FavoriteViewWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SlideBar(
            view: 'favorite',
          ),
          Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Favorite',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [MovieItem(width: 348, height: 259)],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
