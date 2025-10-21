import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'newsets_books_state.dart';

class NewSetBooksCubit extends Cubit<NewSetsBooksState> {
  NewSetBooksCubit(this.homeRepo) : super(NewSetBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchNewSetBooks() async {
    emit(NewSetBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) {
        emit(NewSetBooksFailure(failure.errMessage));
      },
      (books) {
        emit(NewSetBooksSuccess(books));
      },
    );
  }
}
