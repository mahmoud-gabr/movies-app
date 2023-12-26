import 'package:flutter/material.dart';
import 'package:movies_app/features/web/home/presentation/views/widgets/movie_item.dart';

class TrendingListView extends StatelessWidget {
  const TrendingListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding:  EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    MovieItem(width: 255,height: 301,),
                    MovieItem(width: 255,height: 301,),
                    MovieItem(width: 255,height: 301,),
                    MovieItem(width: 255,height: 301,),
                  ],
                ),
              ),
            );
  }
}