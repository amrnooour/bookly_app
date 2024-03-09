import 'package:bookly_app/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return AspectRatio(
      aspectRatio: 2.6/4,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
            image: AssetImage(AppAssets.test),fit: BoxFit.fill)),
      ),
    );
  }
}