import 'package:bookly_app/core/utils/app_color.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/view_model/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/view_model/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/routes/app_router.dart';


void main() {
  setupServiceLocator();
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>())..fetchFeaturedBooks(),),
        BlocProvider(create: (context) => NewestBooksCubit(getIt.get<HomeRepoImpl>())..fetchNewestBooks(),)
      ],
      child: MaterialApp.router(
        routerConfig: router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: AppColor.primaryColor,
        ),
      ),
    );
  }
}

