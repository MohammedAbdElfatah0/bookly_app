import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.rating,
    required this.count,
  });
  final double rating;
  final int count;
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(Icons.star, size: 14, color: Colors.yellowAccent),
        const SizedBox(width: 6),
        Text('$rating', style: Styles.titleStyle16),
        const SizedBox(width: 6),
        Opacity(opacity: 0.5, child: Text('$count', style: Styles.textStyle14)),
      ],
    );
  }
}
