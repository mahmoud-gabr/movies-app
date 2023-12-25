import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_app/core/app_router_web.dart';
import 'package:movies_app/core/widgets/custom_botton.dart';

class WelcomeContent extends StatelessWidget {
  const WelcomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 198,
        width: 225,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/images/logo.png'),
            const Text(
              'Enjoy the newest movies',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            CustomBotton(
              text: 'Log in',
              width: 225,
              onPressed: () {
                GoRouter.of(context).push(AppRoutersWeb.kHomeView);
              },
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'No account? ',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'SignUp',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    color: Colors.white,
                  ),
                )
              ],
            )
          ],
        ));
  }
}
