import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'book_action.dart';
import 'book_rating.dart';
import 'custom_book_image.dart';

class BooksDetailsSections extends StatelessWidget {
  const BooksDetailsSections({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.21),
          child: const CustomBookImage(
            imageUrl: "https://img.freepik.com/free-photo/closeup-scarlet-macaw-from-side-view-scarlet-macaw-closeup-head_488145-3540.jpg?semt=ais_hybrid&w=740&q=80",
          ),
        ),
        const SizedBox(height: 30),
        const Text('The Jungle Book', style: Styles.textStyle30),
        const SizedBox(height: 4),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.titleStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 14),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(height: 30),
        const BooksAction(),
      ],
    );
  }
}
