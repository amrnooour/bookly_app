import 'package:bookly_app/features/book_details/presentation/view/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/search/presentation/view/search_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/splash.dart';


final GoRouter router = GoRouter(
  routes : [
    GoRoute(path: "/",builder: (context, state) => const Splash(),),
    GoRoute(path: "/home",builder: (context, state) => const HomeView(),),
    GoRoute(path: "/bookDetailsView",builder: (context, state) => const BookDetailsView(),),
    GoRoute(path: "/searchView",builder: (context, state) => const SearchView(),)

  ]
);