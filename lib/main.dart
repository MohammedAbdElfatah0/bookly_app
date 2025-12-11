import 'package:bookly_app/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/Features/home/presentation/manger/featured_books/featured_book_cubit.dart';
import 'package:bookly_app/Features/home/presentation/manger/new_sets_books/new_sets_books_cubit.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/service_locater.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocater();
  runApp(const BookManagerApp());
}

class BookManagerApp extends StatelessWidget {
  const BookManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (_) =>
                  FeaturedBookCubit(getIt.get<HomeRepoImpl>())
                    ..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create:
              (_) =>
                  NewSetBooksCubit(getIt.get<HomeRepoImpl>())
                    ..fetchNewSetBooks(),
        ),

      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: kPrimeColor,
          brightness: Brightness.dark,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
        // home: const SplashView(),
      ),
    );
  }
}
