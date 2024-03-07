import 'package:bookly_app/features/splash/widgets/splash_body.dart';
import 'package:flutter/material.dart';


class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashBody(),
    );
  }
}
