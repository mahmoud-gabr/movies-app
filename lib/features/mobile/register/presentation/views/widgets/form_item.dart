import 'package:flutter/material.dart';
import 'package:movies_app/features/mobile/register/presentation/views/widgets/custom_password_text_field.dart';
import 'package:movies_app/features/mobile/register/presentation/views/widgets/custom_text_field.dart';

class FormItem extends StatelessWidget {
  const FormItem(
      {super.key,
      required this.header,
      required this.label,
      required this.isPass,
      this.validator,
      this.onSaved});
  final String header;
  final String label;
  final bool isPass;
  final String? Function(String?)? validator;
  final Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 74,
      width: 302,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            header,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          isPass
              ? CustomPasswordTextField(
                  label: label,
                  validator: validator,
                  onSaved: onSaved,
                )
              : CustomTextField(
                  label: label,
                  validator: validator,
                  onSaved: onSaved,
                ),
        ],
      ),
    );
  }
}
