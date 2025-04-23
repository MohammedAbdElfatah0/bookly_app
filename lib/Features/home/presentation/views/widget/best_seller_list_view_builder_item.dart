import 'package:flutter/material.dart';

import 'book_list_view_item.dart';

class BestSellerListViewBuilderItem extends StatelessWidget {
  const BestSellerListViewBuilderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 8,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) => const BookListViewItem(),
    );
  }
}
