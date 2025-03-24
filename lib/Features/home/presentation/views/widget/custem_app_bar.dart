import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/assets_data.dart';

class CustemAppBar extends StatelessWidget {
  const CustemAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 25),
      child: Row(
        children: [
          Image.asset(AssetsData.images, height: 26),
          const Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kSearchView);
            },
            icon: const Icon(Icons.search),
            iconSize: 24,
          ),
        ],
      ),
    );
  }
}
