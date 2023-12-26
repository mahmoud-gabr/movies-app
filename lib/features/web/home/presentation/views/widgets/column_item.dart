import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ColumnItem extends StatelessWidget {
  const ColumnItem(
      {super.key,
      required this.icon,
      required this.text,
      required this.fontWeight,
      required this.onTap});
  final IconData icon;
  final String text;
  final FontWeight fontWeight;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
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
      ),
    );
  }
}
