import 'package:bookly_app/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'core/routes/app_router.dart';


void main() {
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColor.primaryColor,
      ),
    );
  }
}

