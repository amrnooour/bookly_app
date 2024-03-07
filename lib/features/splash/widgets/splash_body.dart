import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bookly_app/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import '../../../core/function/navigation.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  void initState() {
    super.initState();
    navigateToHome();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AppAssets.logo),
        const SizedBox(height: 10,),
        AnimatedTextKit(
          animatedTexts: [
            WavyAnimatedText('Read Free Books',textAlign: TextAlign.center,
                textStyle: const TextStyle(fontSize: 20),speed: const Duration(milliseconds: 100)),
          ],
          repeatForever: true,
        ),
      ],
    );
  }
  navigateToHome(){
    Future.delayed(const Duration(seconds: 2),(){
      customReplacementNavigate(context, "/home");
    });
  }
}
