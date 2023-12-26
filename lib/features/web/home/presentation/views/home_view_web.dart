import 'package:flutter/material.dart';

import 'package:movies_app/features/web/home/presentation/views/widgets/slide_bar.dart';
import 'package:movies_app/features/web/home/presentation/views/widgets/trending_list_view.dart';

class HomeViewWeb extends StatelessWidget {
  const HomeViewWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SlideBar(
            view: 'home',
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // HomeCover(),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  'Trending',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: TrendingListView(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
