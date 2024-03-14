import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  final int rating;
  final int count;
  MainAxisAlignment mainAxisAlignment;
  BookRating({Key? key,this.mainAxisAlignment = MainAxisAlignment.start,required this.rating,required this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(Icons.star,color: Colors.yellow,size: 14,),
        const SizedBox(width: 6.3,),
        Text("$rating",style: Styles.textStyle16,),
        const SizedBox(width: 5,),
        Text("($count)",style: Styles.textStyle14.copyWith(color: Colors.grey),)
      ],
    );
  }
}
