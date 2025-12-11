import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/Features/search/presentation/manger/search_book/sreach_book_cubit.dart';
import 'package:bookly_app/core/utils/service_locater.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widget/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SreachBookCubit(getIt.get<HomeRepoImpl>()),
      child: const Scaffold(body: SafeArea(child: SearchViewBody())),
    );
  }
}
