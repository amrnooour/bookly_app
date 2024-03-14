import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:bookly_app/features/home/presentation/view_model/similar_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState>{
  SimilarBooksCubit(this.homeRepo) : super(InitialSimilarBooksState());

 final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String category}) async{
    emit(LoadingSimilarBooksState());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold((failure) {
      emit(FailureSimilarBooksState(failure.toString()));
    }, (books)  {
      emit(SuccessSimilarBooksState(books));
    });
  }
}