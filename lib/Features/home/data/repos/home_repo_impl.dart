import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/utils/api_service.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;
  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsSetBooks() async {
    try {
      var data = await apiService.get(
        endpoint:
            "volumes?Filtering=free-ebooks&Sorting=newest &q=subject:computer science",
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServiceFailure.formDioError(e));
      }
      return left(ServiceFailure(errMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
        endpoint: "volumes?Filtering=free-ebooks &q=subject:programming",
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServiceFailure.formDioError(e));
      }
      return left(ServiceFailure(errMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({
    required String category,
  }) async {
    try {
      var data = await apiService.get(
        endpoint:
            "volumes?Filtering=free-ebooks&Sorting=relevance &q=subject:computer science",
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServiceFailure.formDioError(e));
      }
      return left(ServiceFailure(errMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchBooks({
    required String searchText,
  }) async {
    try {
      var data = await apiService.get(
        endpoint:
            "volumes?Filtering=free-ebooks&Sorting=relevance &q=subject:$searchText",
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServiceFailure.formDioError(e));
      }
      return left(ServiceFailure(errMessage: e.toString()));
    }
  }
}
