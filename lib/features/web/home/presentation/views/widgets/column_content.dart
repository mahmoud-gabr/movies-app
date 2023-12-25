import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movies_app/features/web/home/presentation/views/widgets/column_item.dart';

class ColumnContent extends StatelessWidget {
  const ColumnContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        width: 144,
        child: Column(
          children: [
            ColumnItem(
              icon: Icons.local_movies,
              text: 'Home',
              fontWeight: FontWeight.w900,
            ),
            SizedBox(
              height: 20,
            ),
            ColumnItem(
              icon: Icons.favorite_border,
              text: 'Favorite',
              fontWeight: FontWeight.normal,
            ),
            SizedBox(
              height: 20,
            ),
            ColumnItem(
              icon: Icons.trending_up,
              text: 'Trending',
              fontWeight: FontWeight.normal,
            ),
            SizedBox(
              height: 20,
            ),
            ColumnItem(
              icon: Icons.calendar_today_rounded,
              text: 'Comming soon',
              fontWeight: FontWeight.normal,
            ),
            SizedBox(
              height: 80,
            ),
            ColumnItem(
              icon: Icons.people,
              text: 'Community',
              fontWeight: FontWeight.normal,
            ),
            SizedBox(
              height: 20,
            ),
            ColumnItem(
              icon: Icons.messenger_outline_rounded,
              text: 'Socia',
              fontWeight: FontWeight.normal,
            ),
            SizedBox(
              height: 100,
            ),
            ColumnItem(
              icon: Icons.display_settings_outlined,
              text: 'Setting',
              fontWeight: FontWeight.normal,
            ),
            SizedBox(
              height: 20,
            ),
            ColumnItem(
              icon: Icons.logout,
              text: 'Logout',
              fontWeight: FontWeight.normal,
            ),
          ],
        ));
  }
}
