import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(child: CustomButton(text: "19.99 € ",backgroundColor: Colors.white,color: Colors.black,
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(12),bottomLeft: Radius.circular(16)),)),
          Expanded(child: CustomButton(fontSize: 16,text: "Free Preview ",backgroundColor: Colors.pinkAccent,color: Colors.white,
            borderRadius: const BorderRadius.only(topRight: Radius.circular(12),bottomRight: Radius.circular(16)),)),
        ],
      ),
    );
  }
}
