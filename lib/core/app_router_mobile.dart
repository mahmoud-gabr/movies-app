import 'package:go_router/go_router.dart';
import 'package:movies_app/features/mobile/home/presemtation/views/home_view.dart';

abstract class AppRoutersMoblile {
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeView(),
    ),
  ]);
}
