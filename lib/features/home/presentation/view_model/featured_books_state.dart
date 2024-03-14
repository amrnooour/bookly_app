import '../../data/models/book_model.dart';

class FeaturedBooksState{}
class InitialFeaturedBooksState extends FeaturedBooksState{}
class LoadingFeaturedBooksState extends FeaturedBooksState{}
class SuccessFeaturedBooksState extends FeaturedBooksState{
  final List<BookModel> books;
  SuccessFeaturedBooksState(this.books);

}
class FailureFeaturedBooksState extends FeaturedBooksState{
  String errorMessage;
  FailureFeaturedBooksState(this.errorMessage);
}