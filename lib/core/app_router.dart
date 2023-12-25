import 'package:go_router/go_router.dart';
import 'package:movies_app/features/web/welcome_screen/presentation/views/welcome_view.dart';

abstract class AppRouters {
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/',
      builder: (context, state) => const WelcomeView(),
      )
  ]);
}
