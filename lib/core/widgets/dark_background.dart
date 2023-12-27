import 'package:flutter/material.dart';

class DarkBackground extends StatelessWidget {
  const DarkBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
          ignoring: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black
                .withOpacity(0.6), // Adjust the opacity (0.0 to 1.0)
          ),
        );
  }
}