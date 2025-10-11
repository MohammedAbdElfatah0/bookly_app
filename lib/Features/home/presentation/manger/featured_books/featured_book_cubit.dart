import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/models/book_model/book_model.dart';
part 'featured_book_state.dart';

class FeaturedBookCubit extends Cubit<FeaturedBookState> {
  FeaturedBookCubit(this.homeRepo) : super(FeaturedBookInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBookLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) {
        emit(FeaturedBookFailure(errMessage: failure.errMessage));
      },
      (books) {
        emit(FeaturedBookSuccess(books));
      },
    );
  }
}
