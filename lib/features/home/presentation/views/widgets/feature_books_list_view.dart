import 'package:bookly_app/core/function/navigation.dart';
import 'package:bookly_app/core/utils/app_assets.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/view_model/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/view_model/featured_books_state.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return BlocBuilder<FeaturedBooksCubit,FeaturedBooksState>(
      builder: (context, state) {
        if(state is SuccessFeaturedBooksState){
          return SizedBox(
            height: height*.3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: GestureDetector(
                      onTap: (){
                        customNavigation(context, "/bookDetailsView",extra: state.books[index]);
                      },
                      child: CustomBookImage(imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail,)),
                )),
          );
        }else if(state is FailureFeaturedBooksState){
          return CustomErrorWidget(errorMessage: state.errorMessage);
        }else{
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
