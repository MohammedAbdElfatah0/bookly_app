part of 'sreach_book_cubit.dart';

sealed class SreachBookState extends Equatable {
  const SreachBookState();

  @override
  List<Object> get props => [];
}

final class SreachBookInitial extends SreachBookState {}

final class SreachBookSuccess extends SreachBookState {
  final List<BookModel> books;
  const SreachBookSuccess(this.books);
  @override
  List<Object> get props => [books];
}

final class SreachBooksLoading extends SreachBookState {}

final class SreachBooksFailure extends SreachBookState {
  final String errMessage;
  const SreachBooksFailure(this.errMessage);
  @override
  List<Object> get props => [errMessage];
}
