import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_app/core/app_router_mobile.dart';
import 'package:movies_app/core/widgets/custoum_botton_app.dart';

class BottonColumn extends StatelessWidget {
  const BottonColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 177,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomBottonApp(
            isFilled: true,
            onTap: () {
              GoRouter.of(context).push(AppRoutersMoblile.kRegisterView);
            },
            text: 'Suscribete a movie+',
          ),
          CustomBottonApp(
            isFilled: false,
            onTap: () {
              GoRouter.of(context).push(AppRoutersMoblile.kHomeView);
            },
            text: 'Ya te suscibiste a movie+',
          ),
          CustomBottonApp(
            isFilled: false,
            onTap: () {},
            text: 'Iniciar sesion',
          ),
        ],
      ),
    );
  }
}
