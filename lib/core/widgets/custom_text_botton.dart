import 'package:flutter/material.dart';

class CustomTextBotton extends StatelessWidget {
  const CustomTextBotton(
      {super.key,
      required this.text,
      this.fontSize,
      this.onPressed,
      required this.width});
  final String text;

  final double width;

  final double? fontSize;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 54,
        width: width,
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            backgroundColor: const Color(0xff6100C2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: fontSize ?? 16,
              color: Colors.white,
            ),
          ),
        ));
  }
}
