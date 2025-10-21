import 'package:bookly_app/Features/home/presentation/views/widget/best_seller_list_view_builder_item.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'custem_app_bar.dart';
import 'featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustemAppBar(),
                FeaturedBooksListView(),
                SizedBox(height: 50),
                Text('New Set Books', style: Styles.titleStyle18),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            // child: Container(),
            child: BestSellerListViewBuilderItem(),
          ),
        ),
      ],
    );
  }
}
