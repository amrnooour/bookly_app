import 'package:bookly_app/features/home/presentation/view_model/featured_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repos/home_repo.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState>{
  final HomeRepo homeRepo;
  FeaturedBooksCubit(this.homeRepo) : super(InitialFeaturedBooksState());

  Future<void> fetchFeaturedBooks() async{
    emit(LoadingFeaturedBooksState());
   var result = await homeRepo.fetchFeaturedBooks();
   result.fold((failure) {
     emit(FailureFeaturedBooksState(failure.toString()));
    }, (books)  {
     emit(SuccessFeaturedBooksState(books));
       });
  }



}