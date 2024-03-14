import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/utils/laubch_url.dart';

class BooksAction extends StatelessWidget {
  final BookModel bookModel;
  const BooksAction({Key? key,required this.bookModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(child: CustomButton(text: getText(bookModel),backgroundColor: Colors.white,color: Colors.black,
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(12),bottomLeft: Radius.circular(16)),)),
          Expanded(child: CustomButton(fontSize: 16,text: "Preview ",backgroundColor: Colors.pinkAccent,color: Colors.white,
            onPressed: (){
              launchCustomUrl(context,bookModel.volumeInfo.previewLink!);
            },
            borderRadius: const BorderRadius.only(topRight: Radius.circular(12),bottomRight: Radius.circular(16)),)),
        ],
      ),
    );
  }
  String getText(BookModel bookModel){
    if(bookModel.volumeInfo.previewLink == null){
      return "not Available";
    }else{
      return "Preview";
    }
  }
}
