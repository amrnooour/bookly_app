import 'package:bookly_app/features/home/presentation/view_model/newest_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repos/home_repo.dart';

class NewestBooksCubit extends Cubit<NewestBooksState>{
  final HomeRepo homeRepo;
  NewestBooksCubit(this.homeRepo) : super(InitialNewestBooksState());

  Future<void> fetchNewestBooks() async{
    emit(LoadingNewestBooksState());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FailureNewestBooksState(failure.toString()));
    }, (books)  {
      emit(SuccessNewestBooksState(books));
    });
  }
}