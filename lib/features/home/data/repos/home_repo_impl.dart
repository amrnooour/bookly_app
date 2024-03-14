import 'dart:convert';

import 'package:bookly_app/core/errors/fauilure.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/errors/exceptions.dart';



class HomeRepoImpl extends HomeRepo{
  final ApiService apiService;
  HomeRepoImpl(this.apiService);
  @override
  Future<Either<String, List<BookModel>>> fetchNewestBooks() async{
    try{
      var data = await apiService.get(endPoint: "volumes?q=subject:Computer science&filtering=free-ebooks");
      List<BookModel> books = [];
      for(var item in data["items"]){
        try{
          books.add(BookModel.fromJson(item));
        }catch(e){
        }
      }
     return right(books);

    }on ServerException catch(e){
      return left(e.errModel.error?.message??"something went wrong");
    }
  }

  @override
  Future<Either<String, List<BookModel>>> fetchFeaturedBooks() async{
    try{
      var data = await apiService.get(endPoint: "volumes?q=subject:programming&filtering=free-ebooks");
      List<BookModel> books = [];
      for(var item in data["items"]){
        books.add(BookModel.fromJson(item));
      }
      return right(books);

    }on ServerException catch(e){
      return left(e.errModel.error?.message??"something went wrong");
    }
  }

  @override
  Future<Either<String, List<BookModel>>> fetchSimilarBooks({required String category}) async{
    try{
      var data = await apiService.get(endPoint: "volumes?q=subject:Computer science&filtering=free-ebooks&sorting=relevance");
      List<BookModel> books = [];
      for(var item in data["items"]){
        try{
          books.add(BookModel.fromJson(item));
        }catch(e){
        }
      }
      return right(books);

    }on ServerException catch(e){
      return left(e.errModel.error?.message??"something went wrong");
    }
  }
  }

