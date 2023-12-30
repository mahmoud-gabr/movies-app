import 'package:flutter/material.dart';

class MyListItem extends StatelessWidget {
  const MyListItem({
    super.key,
    required this.img,
    required this.name,
    this.onTap,
  });
  final String img;
  final String name;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: SizedBox(
          height: 154,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                img,
                width: 130,
                height: 130,
              ),
              Text(
                name,
                style: const TextStyle(fontSize: 12),
              )
            ],
          ),
        ),
      ),
    );
  }
}
