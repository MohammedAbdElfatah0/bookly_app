import 'package:flutter/material.dart';
import 'books_details_sections.dart';
import 'custem_book_app_bar.dart';
import 'similar_books.section.dart';

class BookDetailViewBody extends StatelessWidget {
  const BookDetailViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              spacing: 15,
              children: [
                CustemBookDetailsAppBar(),
                BooksDetailsSections(),
                Expanded(child: SizedBox(height: 16)),
                SimilarBooksSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
