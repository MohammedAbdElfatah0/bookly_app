import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'similar_book_list_view.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'you can also like ',
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 16),
        const SimilarBookListView(),
      ],
    );
  }
}
