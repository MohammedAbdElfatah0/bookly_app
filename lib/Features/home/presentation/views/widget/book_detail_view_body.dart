import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'books_details_sections.dart';
import 'custem_book_app_bar.dart';
import 'similar_books.section.dart';

class BookDetailViewBody extends StatelessWidget {
  const BookDetailViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              spacing: 15,
              children: [
                const CustemBookDetailsAppBar(),
                BooksDetailsSections(bookModel: bookModel),
                const Expanded(child: SizedBox(height: 16)),
                const SimilarBooksSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
