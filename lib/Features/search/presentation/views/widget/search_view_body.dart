import 'package:bookly_app/Features/search/presentation/views/widget/search_result_list_view.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'custom_search_text_files.dart';

//files
class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomSearchTextField(),
        SizedBox(height: 16),
        Text('Search Result', style: Styles.titleStyle18),
        SizedBox(height: 16),
        Expanded(child: SearchResultListView()),
      ],
    );
  }
}
