import 'package:go_router/go_router.dart';
import 'package:movies_app/features/web/home/presentation/views/favorite_view_web.dart';
import 'package:movies_app/features/web/home/presentation/views/home_view_web.dart';
import 'package:movies_app/features/web/home/presentation/views/trending_view.dart';

abstract class AppRoutersWeb {
  static const kHomeView = '/homeView';
  static const kFavoriteView = '/favoriteView';
  static const kTrendingView = '/trendingView';
  static final router = GoRouter(routes: [
    // GoRoute(
    //   path: '/',
    //   builder: (context, state) => const WelcomeView(),
    // ),
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeViewWeb(),
    ),
    GoRoute(
      path: kFavoriteView,
      builder: (context, state) => const FavoriteViewWeb(),
    ),
        GoRoute(
      path: kTrendingView,
      builder: (context, state) => const TrendingView(),
    ),
  ]);
}
