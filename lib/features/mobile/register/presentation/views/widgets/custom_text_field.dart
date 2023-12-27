import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.label, this.validator, this.onSaved});
  final String label;
  final String? Function(String?)? validator;
  final Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      width: 302,
      height: 45,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: const Color(0xff892AEC),
        ),
        color: const Color(0xff3F1E88),
      ),
      child: TextFormField(
        validator: validator,
        onSaved: onSaved,
        cursorColor: Colors.white,
        decoration: InputDecoration(
          hintText: label,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
