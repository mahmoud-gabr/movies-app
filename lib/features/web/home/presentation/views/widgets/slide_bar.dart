import 'package:flutter/material.dart';
import 'package:movies_app/features/web/home/presentation/views/widgets/column_content.dart';

class SlideBar extends StatelessWidget {
  const SlideBar({super.key, required this.view});
final String view;
  @override
  Widget build(BuildContext context) {
    return Container(
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
             ColumnContent(view: view,),
          ],
        ),
      ),
    );
  }
}
