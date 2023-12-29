import 'package:go_router/go_router.dart';
import 'package:movies_app/features/mobile/home/presentation/views/home_view.dart';
import 'package:movies_app/features/mobile/register/presentation/views/register_view.dart';
import 'package:movies_app/features/mobile/splash/presentation/views/splash_view.dart';

abstract class AppRoutersMoblile {
  static const kRegisterView = '/registerView';
  static const kHomeView = '/homeView';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kRegisterView,
      builder: (context, state) => const RegisterView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeView(),
    ),
  ]);
}
