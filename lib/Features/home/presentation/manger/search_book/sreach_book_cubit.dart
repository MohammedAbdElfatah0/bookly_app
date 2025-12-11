import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'sreach_book_state.dart';

class SreachBookCubit extends Cubit<SreachBookState> {
  SreachBookCubit(this.homeRepo) : super(SreachBookInitial());

  final HomeRepo homeRepo;
  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SreachBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold(
      (failure) {
        emit(SreachBooksFailure(failure.errMessage));
      },
      (books) {
        emit(SreachBookSuccess(books));
      },
    );
  }
}
