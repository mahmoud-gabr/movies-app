import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_app/core/app_router_mobile.dart';
import 'package:movies_app/features/mobile/home/presentation/views/widgets/my_list_item.dart';
import 'package:movies_app/features/mobile/home/presentation/views/widgets/list_item.dart';
import 'package:movies_app/features/mobile/home/presentation/views/widgets/sub_home_stack.dart';

class HomeStack extends StatelessWidget {
  const HomeStack({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1011,
      child: Stack(
        children: [
          const SizedBox(
            height: 540,
            child: SubHomeStack(),
          ),
          Positioned(
            top: 510,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SizedBox(
                height: 470,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'My List',
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          MyListItem(
                            name: 'Los miserables',
                            img: 'assets/images/series.png',
                            onTap: () {
                              GoRouter.of(context)
                                  .push(AppRoutersMoblile.kSeriesView);
                            },
                          ),
                          const MyListItem(
                            name: 'Los miserables',
                            img: 'assets/images/series.png',
                          ),
                          const MyListItem(
                            name: 'Los miserables',
                            img: 'assets/images/series.png',
                          ),
                          const MyListItem(
                            name: 'Los miserables',
                            img: 'assets/images/series.png',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Solo Movie List',
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ListItem(
                            imge: 'assets/images/series_2.png',
                          ),
                          ListItem(
                            imge: 'assets/images/series_2.png',
                          ),
                          ListItem(
                            imge: 'assets/images/series_2.png',
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
