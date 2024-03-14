import '../../data/models/book_model.dart';

class SimilarBooksState{}
class InitialSimilarBooksState extends SimilarBooksState{}
class LoadingSimilarBooksState extends SimilarBooksState{}
class SuccessSimilarBooksState extends SimilarBooksState{
  final List<BookModel> books;
  SuccessSimilarBooksState(this.books);

}
class FailureSimilarBooksState extends SimilarBooksState{
  String errorMessage;
  FailureSimilarBooksState(this.errorMessage);
}