import 'package:flutter/material.dart';
import 'package:movies_app/core/widgets/custom_botton.dart';
import 'package:movies_app/core/widgets/custom_fav_booton.dart';
import 'package:movies_app/features/web/home/presentation/views/widgets/appbar.dart';
import 'package:movies_app/features/web/home/presentation/views/widgets/column_content.dart';
import 'package:movies_app/features/web/home/presentation/views/widgets/home_cover.dart';

class HomeViewWeb extends StatelessWidget {
  const HomeViewWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * .15,
            color: const Color(0xff21201E),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Image.asset('assets/images/logo.png'),
                  const SizedBox(
                    height: 50,
                  ),
                  const ColumnContent(),
                ],
              ),
            ),
          ),
          const HomeCover()
        ],
      ),
    );
  }
}
