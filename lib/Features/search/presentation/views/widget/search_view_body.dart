import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../../home/presentation/views/widget/book_list_view_item.dart';
import 'custem_search_text_fiels.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustemSearchTextField(),
        SizedBox(height: 16),
        Text('Search Result', style: Styles.titleStyle18),
        SizedBox(height: 16),
        Expanded(child: SearchResultListView()),
      ],
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 8,
      padding: EdgeInsets.zero,
      // itemBuilder: (context, index) => const BookListViewItem(),
      itemBuilder: (context, index) => const Text("data"),
    );
  }
}
