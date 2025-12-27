import 'package:bookly_app/Features/home/presentation/views/widget/book_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manger/search_book/sreach_book_cubit.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SreachBookCubit, SreachBookState>(
      builder: (context, state) {
        if (state is SreachBooksLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state is SreachBooksFailure) {
          return Center(child: Text(state.errMessage));
        }

        if (state is SreachBookSuccess) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              final book = state.books[index];
              return BookListViewItem(bookModel: book);
              // // return Text(book.volumeInfo!.pageCount.toString() ?? "");
              // CustomBookImage(
              //   imageUrl: book.volumeInfo!.imageLinks!.smallThumbnail ?? "https://pngtree.com/so/image-not-found",
              // );
            },
          );
        }

        return const Center(child: Text("Start searching..."));
      },
    );
  }
}
