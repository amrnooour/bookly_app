import 'package:bookly_app/core/function/navigation.dart';
import 'package:bookly_app/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40,bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AppAssets.logo,
          height: 18,
          ),
          IconButton(onPressed: (){
            customNavigation(context, "/searchView");
          },
              icon: const Icon(Icons.search,size: 24,))
        ],
      ),
    );
  }
}
