import 'package:bookly_app/core/function/navigation.dart';
import 'package:bookly_app/core/utils/app_assets.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        customNavigation(context, "/bookDetailsView");
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
          AspectRatio(
          aspectRatio: 2.5/4,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                    image: AssetImage(AppAssets.test),fit: BoxFit.fill)),
          ),
        ),
            const SizedBox(width: 30,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width*.5,
                    child: Text("Harry potter and the Globlet of Fire",style: Styles.textStyle20Normal.copyWith(
                      fontFamily: Constants.sectraFont,
                    ),
                    maxLines: 2,overflow: TextOverflow.ellipsis,
                    )),
                const SizedBox(width: 3,),
                const Text("J.K.Rowling",style: Styles.textStyle14,),
                const SizedBox(width: 3,),
                Row(
                  children: [
                    Text("19.99 €",style: Styles.textStyle20Normal.copyWith(fontWeight: FontWeight.bold),),
                    const Spacer(),
                    BookRating()
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
