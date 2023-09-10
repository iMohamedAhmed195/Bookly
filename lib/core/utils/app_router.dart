import 'package:booklyy/features/home_feature/presentation/view/book_details_view.dart';
import 'package:booklyy/features/home_feature/presentation/view/home_view.dart';
import 'package:booklyy/features/splash_features/presentasion_layer/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter{
  static const kHomeView= '/homeView';
  static const kBookDetailsView= '/bookDetailsView';
 static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}