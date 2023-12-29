import 'package:flutter/material.dart';

class MyListItem extends StatelessWidget {
  const MyListItem({
    super.key,
    required this.img,
    required this.name,
  });
  final String img;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: SizedBox(
        height: 154,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(img,width: 130,height: 130,),
            Text(
              name,
              style: const TextStyle(fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
