part of 'new_sets_books_cubit.dart';

abstract class NewSetsBooksState extends Equatable {
  const NewSetsBooksState();

  @override
  List<Object> get props => [];
}

class NewSetBooksLoading extends NewSetsBooksState {}

class NewSetBooksInitial extends NewSetsBooksState {}

class NewSetBooksFailure extends NewSetsBooksState {
  final String errMessage;

  const NewSetBooksFailure(this.errMessage);
}

class NewSetBooksSuccess extends NewSetsBooksState {
  final List<BookModel> books;

  const NewSetBooksSuccess(this.books);
}
