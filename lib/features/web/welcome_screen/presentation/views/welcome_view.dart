import 'package:flutter/material.dart';
import 'package:movies_app/features/web/welcome_screen/presentation/views/widgets/welcome_content.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/welcome_screen.png',
            fit: BoxFit.cover,
          ),
          const Center(
            child: WelcomeContent(),
          )
        ],
      ),
    );
  }
}
