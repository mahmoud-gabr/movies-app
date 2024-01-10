import 'package:flutter/material.dart';
import 'package:movies_app/features/mobile/home/presentation/views/widgets/list_item.dart';

class NewestListView extends StatelessWidget {
  const NewestListView({super.key});
//made to put the header in the start 
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 30),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Nuevos estrenos',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 12,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ListItem(
                  imge: 'assets/images/jungle.png',
                  width: 220,
                ),
                ListItem(
                  imge: 'assets/images/jungle.png',
                  width: 220,
                ),
                ListItem(
                  imge: 'assets/images/jungle.png',
                  width: 220,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
