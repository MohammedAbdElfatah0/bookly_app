import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'book_action.dart';
import 'book_rating.dart';
import 'custom_book_image.dart';

class BooksDetailsSections extends StatelessWidget {
  const BooksDetailsSections({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.21),
          child: CustomBookImage(
            imageUrl: bookModel.volumeInfo!.imageLinks!.thumbnail!,
          ),
        ),
        const SizedBox(height: 30),
        Text(
          bookModel.volumeInfo!.title!,
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 4),
        Opacity(
          opacity: 0.7,
          child: Text(
            bookModel.volumeInfo!.authors!.join(', '),
            style: Styles.titleStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 14),
        BookRating(
          count: bookModel.volumeInfo!.pageCount ?? 0,
          rating: 0.0,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(height: 30),
        BooksAction(bookModel: bookModel),
      ],
    );
  }
}
