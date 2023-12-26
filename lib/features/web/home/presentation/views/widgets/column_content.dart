import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_app/core/app_router_web.dart';
import 'package:movies_app/features/web/home/presentation/views/widgets/column_item.dart';

class ColumnContent extends StatelessWidget {
  const ColumnContent({super.key, required this.view});
  final String view;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 144,
        child: Column(
          children: [
            ColumnItem(
              onTap: () {},
              icon: Icons.local_movies,
              text: 'Home',
              fontWeight: view == 'home' ? FontWeight.w900 : FontWeight.normal,
            ),
            const SizedBox(
              height: 20,
            ),
            ColumnItem(
              onTap: () {
                GoRouter.of(context).push(AppRoutersWeb.kFavoriteView);
              },
              icon: Icons.favorite_border,
              text: 'Favorite',
              fontWeight:
                  view == 'favorite' ? FontWeight.w900 : FontWeight.normal,
            ),
            const SizedBox(
              height: 20,
            ),
            ColumnItem(
              onTap: () {
                GoRouter.of(context).push(AppRoutersWeb.kTrendingView);
              },
              icon: Icons.trending_up,
              text: 'Trending',
              fontWeight:
                  view == 'trending' ? FontWeight.w900 : FontWeight.normal,
            ),
            const SizedBox(
              height: 20,
            ),
            ColumnItem(
              onTap: () {},
              icon: Icons.calendar_today_rounded,
              text: 'Comming soon',
              fontWeight: FontWeight.normal,
            ),
            const SizedBox(
              height: 80,
            ),
            ColumnItem(
              onTap: () {},
              icon: Icons.people,
              text: 'Community',
              fontWeight: FontWeight.normal,
            ),
            const SizedBox(
              height: 20,
            ),
            ColumnItem(
              onTap: () {},
              icon: Icons.messenger_outline_rounded,
              text: 'Socia',
              fontWeight: FontWeight.normal,
            ),
            const SizedBox(
              height: 100,
            ),
            ColumnItem(
              onTap: () {},
              icon: Icons.display_settings_outlined,
              text: 'Setting',
              fontWeight: FontWeight.normal,
            ),
            const SizedBox(
              height: 20,
            ),
            ColumnItem(
              onTap: () {},
              icon: Icons.logout,
              text: 'Logout',
              fontWeight: FontWeight.normal,
            ),
          ],
        ));
  }
}
