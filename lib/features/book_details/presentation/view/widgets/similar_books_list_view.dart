import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/view_model/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/view_model/similar_books_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../home/presentation/views/widgets/custom_book_image.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return BlocBuilder<SimilarBooksCubit,SimilarBooksState>(
      builder: (context, state) {
        if(state is SuccessSimilarBooksState){
          return SizedBox(
            height: height*.15,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) =>  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: CustomBookImage(imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail??"",),
                )),
          );
        }else if(state is FailureSimilarBooksState){
          return ErrorWidget(state.errorMessage);
        }else{
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
