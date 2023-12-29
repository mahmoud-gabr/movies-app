import 'package:flutter/material.dart';

class HomeStackContent extends StatelessWidget {
  const HomeStackContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: IgnorePointer(
        child: Column(
          children: [
            Text(
              'Movie+',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            Text(
              'VIKINGOS',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Para maratonear',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Text(
              'Lorem ipsum dolor sit amet consectetur. Eget dictum est penatibus eget nunc. Enim pellentesque venenatis enim.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
