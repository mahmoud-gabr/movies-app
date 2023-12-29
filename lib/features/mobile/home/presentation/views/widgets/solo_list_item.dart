import 'package:flutter/material.dart';

class SoloListItem extends StatelessWidget {
  const SoloListItem({super.key, required this.imge});
  final String imge;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Image.asset(
        imge,
        width: 130,
        height: 220,
      ),
    );
  }
}
