import 'package:bookly_app/core/widget/custom_error_message.dart';
import 'package:bookly_app/core/widget/custom_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manger/newsets_books/newsets_books_cubit.dart';
import 'book_list_view_item.dart';

class BestSellerListViewBuilderItem extends StatelessWidget {
  const BestSellerListViewBuilderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewSetBooksCubit, NewSetsBooksState>(
      builder: (context, state) {
        if (state is NewSetBooksSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: state.books.length,
            padding: EdgeInsets.zero,
            itemBuilder:
                (context, index) =>
                    BookListViewItem(bookModel: state.books[index]),
          );
        } else if (state is NewSetBooksFailure) {
          return CustomErrorMessage(errMessage: state.errMessage);
        } else {
          return const CustomLoading();
        }
      },
    );
  }
}
