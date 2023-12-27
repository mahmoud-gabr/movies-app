import 'package:flutter/material.dart';

class CustomPasswordTextField extends StatefulWidget {
  const CustomPasswordTextField(
      {super.key, required this.label, this.validator, this.onSaved});
  final String label;
  final String? Function(String?)? validator;
  final Function(String?)? onSaved;

  @override
  State<CustomPasswordTextField> createState() =>
      _CustomPasswordTextFieldState();
}

class _CustomPasswordTextFieldState extends State<CustomPasswordTextField> {
  bool obscureText = true;

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
        validator: widget.validator,
        onSaved: widget.onSaved,
        cursorColor: Colors.white,
        obscureText: obscureText,
        decoration: InputDecoration(
          suffixIconColor: Colors.white,
          hintText: widget.label,
          border: InputBorder.none,
          suffixIcon: IconButton(
            icon: Icon(
              obscureText ? Icons.visibility : Icons.visibility_off,
            ),
            onPressed: () {
              setState(() {
                obscureText = !obscureText;
              });
            },
          ),
        ),
      ),
    );
  }
}
