import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ColumnItem extends StatelessWidget {
  const ColumnItem(
      {super.key,
      required this.icon,
      required this.text,
      required this.fontWeight});
  final IconData icon;
  final String text;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 24,
          color: Colors.white,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          text,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 16,
            fontWeight: fontWeight,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
