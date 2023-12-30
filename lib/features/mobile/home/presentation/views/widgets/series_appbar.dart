import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SeriesAppBar extends StatelessWidget {
  const SeriesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () {
          GoRouter.of(context).pop();
        },
      ),
      actions: [
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.connected_tv,
                size: 25,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person,
                size: 25,
              ),
            ),
          ],
        )
      ],
    );
  }
}
