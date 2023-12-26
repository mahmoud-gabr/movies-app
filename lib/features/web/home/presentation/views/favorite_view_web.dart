import 'package:flutter/material.dart';
import 'package:movies_app/features/web/home/presentation/views/widgets/slide_bar.dart';

class FavoriteViewWeb extends StatelessWidget {
  const FavoriteViewWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SlideBar(view: 'favorite',),
      ],
    );
  }
}