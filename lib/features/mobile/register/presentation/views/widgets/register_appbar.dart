import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterAppbar extends StatelessWidget {
  const RegisterAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 42,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Create Account',
          style: TextStyle(
            fontSize: 48,
            color: Colors.white,
            fontWeight: FontWeight.w900,
          ),
        )
      ],
    );
  }
}
