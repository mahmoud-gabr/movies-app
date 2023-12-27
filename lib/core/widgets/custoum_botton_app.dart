import 'package:flutter/material.dart';

class CustomBottonApp extends StatelessWidget {
  const CustomBottonApp(
      {super.key,
      required this.isFilled,
      required this.onTap,
      required this.text});
  final bool isFilled;
  final void Function()? onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 302,
        height: 45,
        decoration: BoxDecoration(
          color: isFilled ? const Color(0xff892AEC) : Colors.transparent,
          border: isFilled
              ? null
              : Border.all(
                  width: 2,
                  color: const Color(0xff9747FF),
                ),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
