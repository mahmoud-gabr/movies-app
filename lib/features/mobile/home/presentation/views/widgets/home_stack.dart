import 'package:flutter/material.dart';
import 'package:movies_app/features/mobile/home/presentation/views/widgets/my_list_item.dart';
import 'package:movies_app/features/mobile/home/presentation/views/widgets/solo_list_item.dart';
import 'package:movies_app/features/mobile/home/presentation/views/widgets/sub_home_stack.dart';

class HomeStack extends StatelessWidget {
  const HomeStack({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 1011,
      child: Stack(
        children: [
          SizedBox(
            height: 540,
            child: SubHomeStack(),
          ),
          Positioned(
            top: 510,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: SizedBox(
                height: 470,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'My List',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SingleChildScrollView(
                      child: Row(
                        children: [
                          MyListItem(
                            name: 'Los miserables',
                            img: 'assets/images/series.png',
                          ),
                          MyListItem(
                            name: 'Los miserables',
                            img: 'assets/images/series.png',
                          ),
                          MyListItem(
                            name: 'Los miserables',
                            img: 'assets/images/series.png',
                          ),
                          MyListItem(
                            name: 'Los miserables',
                            img: 'assets/images/series.png',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Solo Movie List',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SoloListItem(
                          imge: 'assets/images/series_2.png',
                        ),
                        SoloListItem(
                          imge: 'assets/images/series_2.png',
                        ),
                        SoloListItem(
                          imge: 'assets/images/series_2.png',
                        ),
                      ],
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
