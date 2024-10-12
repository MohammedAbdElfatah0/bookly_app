import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: const [
        Icon(
          Icons.star,
          size: 14,
          color: Colors.yellowAccent,
        ),
        SizedBox(
          width: 6,
        ),
        Text(
          '4.8',
          style: Styles.titleStyle16,
        ),
        SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: 0.5,
          child: Text(
            '245',
            style: Styles.textStyle14,
          ),
        )
      ],
    );
  }
}
