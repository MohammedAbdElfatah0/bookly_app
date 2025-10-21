part of 'similar_books_cubit.dart';

sealed class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

final class SimilarBooksInitial extends SimilarBooksState {}
final class SimilarBooksFailure extends SimilarBooksState {
  final String errMessage;
  const SimilarBooksFailure(this.errMessage);
  @override
  List<Object> get props => [errMessage];
}
final class SimilarBooksLoading extends SimilarBooksState {}
final class SimilarBooksSuccess extends SimilarBooksState {
  final List<BookModel> books;
  const SimilarBooksSuccess(this.books);
  @override
  List<Object> get props => [books];
}
