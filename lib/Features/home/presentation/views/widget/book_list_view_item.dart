import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/custom_book_image.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/assets_data.dart';
import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouter.kHomeDetailsView, extra: bookModel);
        },
        child: SizedBox(
          height: 140,
          child: Row(
            children: [
              CustomBookImage(
                imageUrl: bookModel.volumeInfo!.imageLinks!.thumbnail!,
              ),

              // AspectRatio(
              //   aspectRatio: 2.5 / 4, //*  width / height
              //   child: Container(
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(12),
              //       image: const DecorationImage(
              //         image: AssetImage(AssetsData.images),
              //         fit: BoxFit.fill,
              //       ),
              //     ),
              //   ),
              // ),
              const SizedBox(height: 30, width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        bookModel.volumeInfo!.title!,
                        style: Styles.textStyle20,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      bookModel.volumeInfo!.authors?.first ?? 'No Author',
                      style: Styles.textStyle14,
                    ),
                    const SizedBox(height: 3),
                    Row(
                      children: [
                        Text(
                          'Free',
                          style: Styles.textStyle20.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        BookRating(
                          count: bookModel.volumeInfo!.pageCount!,
                          rating: 0.0,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
