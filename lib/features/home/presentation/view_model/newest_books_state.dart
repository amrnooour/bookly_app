import '../../data/models/book_model.dart';

class NewestBooksState{}
class InitialNewestBooksState extends NewestBooksState{}
class LoadingNewestBooksState extends NewestBooksState{}
class SuccessNewestBooksState extends NewestBooksState{
  final List<BookModel> books;
  SuccessNewestBooksState(this.books);

}
class FailureNewestBooksState extends NewestBooksState{
  String errorMessage;
  FailureNewestBooksState(this.errorMessage);
}