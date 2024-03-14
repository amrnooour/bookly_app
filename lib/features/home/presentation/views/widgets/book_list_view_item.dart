import 'package:bookly_app/core/function/navigation.dart';
import 'package:bookly_app/core/utils/app_assets.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

import '../../../data/models/book_model.dart';

class BookListViewItem extends StatelessWidget {
  final BookModel bookModel;
  const BookListViewItem({Key? key,required this.bookModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        customNavigation(context, "/bookDetailsView",extra: bookModel);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
          AspectRatio(
              aspectRatio:2.6/4 ,
              child: CustomBookImage(imageUrl: bookModel.volumeInfo.imageLinks.thumbnail)),
            const SizedBox(width: 30,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width*.5,
                    child: Text(bookModel.volumeInfo.title!,style: Styles.textStyle20Normal.copyWith(
                      fontFamily: Constants.sectraFont,
                    ),
                    maxLines: 2,overflow: TextOverflow.ellipsis,
                    )),
                const SizedBox(width: 3,),
                Text(bookModel.volumeInfo.authors![0],style: Styles.textStyle14,),
                const SizedBox(width: 3,),
                Row(
                  children: [
                    Text("free",style: Styles.textStyle20Normal.copyWith(fontWeight: FontWeight.bold),),
                    const Spacer(),
                    BookRating(
                      rating: 2,
                      count: 250,
                    )
                  ],
                )
              ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
