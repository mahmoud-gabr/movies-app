import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.imge, this.width});
  final String imge;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Image.asset(
        imge,
        width: width ?? 130,
        height: width == null ? 220 : 130,
      ),
    );
  }
}
