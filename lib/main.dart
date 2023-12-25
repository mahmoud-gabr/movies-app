import 'package:flutter/material.dart';
import 'package:movies_app/core/app_router.dart';
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
        theme: ThemeData.dark(),
        routerConfig: AppRouters.router,
      );
    } else {
      return Scaffold();
    }
  }
}
