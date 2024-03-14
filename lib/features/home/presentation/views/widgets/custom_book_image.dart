import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  final String imageUrl;
  const CustomBookImage({Key? key,required this.imageUrl}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.6/4,
        child: CachedNetworkImage(
          errorWidget: (context, url, error) => const Icon(Icons.error),
          placeholder: (context, url) => const CustomLoadingIndicator(),
          imageUrl: imageUrl,fit: BoxFit.fill,)
      ),
    );
  }
}
