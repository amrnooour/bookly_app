import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
  Future<Either<String,List<BookModel>>>fetchNewestBooks();
  Future<Either<String,List<BookModel>>>fetchFeaturedBooks();
  Future<Either<String,List<BookModel>>>fetchSimilarBooks({required String category});


}