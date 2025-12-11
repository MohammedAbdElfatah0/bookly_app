import 'package:bookly_app/Features/search/presentation/manger/search_book/sreach_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: (value) {
        print(value);
        // عند الضغط Enter
        if (value.isNotEmpty) {
          context.read<SreachBookCubit>().fetchSearchBooks(text: value);
        }
      },
      decoration: InputDecoration(
        enabledBorder: buildOutLineBorder(),
        focusedBorder: buildOutLineBorder(),
        hintText: 'search',
        suffixIcon: IconButton(
          onPressed: () {
          },
          icon: const Icon(Icons.search),
        ),
      ),
    );
  }
}

OutlineInputBorder buildOutLineBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: const BorderSide(color: Colors.white),
  );
}
