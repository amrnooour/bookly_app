import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/book_details/presentation/view/book_details_view.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/view_model/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/search/presentation/view/search_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/splash.dart';


final GoRouter router = GoRouter(
  routes : [
    GoRoute(path: "/",builder: (context, state) => const Splash(),),
    GoRoute(path: "/home",builder: (context, state) => const HomeView(),),
    GoRoute(path: "/bookDetailsView",builder: (context, state) => BlocProvider(
        create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
        child:  BookDetailsView(
          bookModel: state.extra as BookModel,
        )),),
    GoRoute(path: "/searchView",builder: (context, state) => const SearchView(),)

  ]
);