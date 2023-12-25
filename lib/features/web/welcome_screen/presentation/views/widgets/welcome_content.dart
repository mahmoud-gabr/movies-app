import 'package:flutter/material.dart';

class WelcomeContent extends StatelessWidget {
  const WelcomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 198,
        width: 225,
        child: Column(
          children: [
            Image.asset('assets/images/icon.png'),
            const Text('Enjoy the newest movies'),
          ],
        ));
  }
}
