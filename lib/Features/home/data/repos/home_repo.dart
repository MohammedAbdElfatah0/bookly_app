import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewsSetBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fetchSearchBooks({required String searchText});
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({required String category});
}
