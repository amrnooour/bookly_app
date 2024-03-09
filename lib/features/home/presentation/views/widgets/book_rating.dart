import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  MainAxisAlignment mainAxisAlignment;
  BookRating({Key? key,this.mainAxisAlignment = MainAxisAlignment.start}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(Icons.star,color: Colors.yellow,size: 14,),
        const SizedBox(width: 6.3,),
        const Text("4.8",style: Styles.textStyle16,),
        const SizedBox(width: 5,),
        Text("(245)",style: Styles.textStyle14.copyWith(color: Colors.grey),)
      ],
    );
  }
}
