import 'package:flutter/material.dart';
import 'package:movies_app/core/app_router_mobile.dart';
import 'package:movies_app/core/app_router_web.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

void main() {
  runApp(const MoviesApp());
}

class MoviesApp extends StatelessWidget {
  const MoviesApp({super.key});

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return MaterialApp.router(
        theme: ThemeData.dark().copyWith(
            textTheme: const TextTheme(
                bodyLarge: TextStyle(
          fontFamily: 'Poppins',
          color: Colors.white, //dont work
        ))),
        routerConfig: AppRoutersWeb.router,
      );
    } else {
      return MaterialApp.router(
        theme: ThemeData.dark().copyWith(
            textTheme: const TextTheme(
                bodyLarge: TextStyle(
          fontFamily: 'Poppins',
          color: Colors.white, //dont work
        ))),
        routerConfig: AppRoutersMoblile.router,
      );
    }
  }
}
