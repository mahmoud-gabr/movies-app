import 'package:flutter/material.dart';

class CustomFavBotton extends StatefulWidget {
  const CustomFavBotton({super.key, required this.width, required this.height, required this.borderRadius});
  final double width;
  final double height;
  final double borderRadius;

  @override
  State<CustomFavBotton> createState() => _CustomFavBottonState();
}

class _CustomFavBottonState extends State<CustomFavBotton> {
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isFav = !isFav;
        });
      },
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(widget.borderRadius),
        ),
        child: Icon(
          isFav ? Icons.favorite_border : Icons.favorite,
          color: const Color(0xff6100C2),
          size: 24,
        ),
      ),
    );
  }
}
