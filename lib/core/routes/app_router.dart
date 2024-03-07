import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/splash.dart';


final GoRouter router = GoRouter(
  routes : [
    GoRoute(path: "/",builder: (context, state) => const Splash(),),
    GoRoute(path: "/home",builder: (context, state) => const HomeView(),)
  ]
);