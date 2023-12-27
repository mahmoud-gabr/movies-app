import 'package:go_router/go_router.dart';
import 'package:movies_app/features/mobile/register/presentation/views/register_view.dart';
import 'package:movies_app/features/mobile/splash/presentation/views/splash_view.dart';

abstract class AppRoutersMoblile {
  static const kRegisterview ='/registerView';
  static final router = GoRouter(routes: [
    GoRoute(path: '/',
    builder: (context, state) => const SplashView(),
    ),
    GoRoute(path: kRegisterview,
    builder: (context, state) => const RegisterView(),
    )
    // GoRoute(
    //   path: '/',
    //   builder: (context, state) => const HomeView(),
    // ),
  ]);
}
