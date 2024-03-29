import 'package:bookly_app/core/utils/app_assets.dart';
import 'package:bookly_app/features/book_details/presentation/view/widgets/books_action.dart';
import 'package:bookly_app/features/book_details/presentation/view/widgets/similar_books_list_view.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'custom_app_bar_book_details.dart';
import 'package:bookly_app/core/utils/styles.dart';


class BookDetailsViewBody extends StatelessWidget {
  final BookModel bookModel;
  const BookDetailsViewBody({Key? key,required this.bookModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              const CustomAppBarBookDetails(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width*.2),
                child:  CustomBookImage(imageUrl: bookModel.volumeInfo.imageLinks.thumbnail??"",),
              ),
              const SizedBox(height: 43,),
              Text(bookModel.volumeInfo.title!,textAlign : TextAlign.center,style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),),
              const SizedBox(height: 6,),
              Opacity(
                opacity: .7,
                child: Text(bookModel.volumeInfo.authors![0],style: Styles.textStyle18SemiBold.copyWith(fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic),),
              ),
              const SizedBox(height: 18,),
              BookRating(mainAxisAlignment: MainAxisAlignment.center,
              rating: 5,
                count: 100,
              ),
              const SizedBox(height: 37,),
              BooksAction(bookModel: bookModel,),
              const Expanded(child: SizedBox(height: 50,)),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("You Can Also Like",style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),)),
              const SizedBox(height: 16,),
              const SimilarBooksListView(),
              const SizedBox(height: 40,),
            ],
          ),
        ),)
      ],
    );

  }
}
