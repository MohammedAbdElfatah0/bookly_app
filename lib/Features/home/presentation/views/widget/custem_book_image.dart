import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_data.dart';

class CustemBookImage extends StatelessWidget {
  const CustemBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 4, //*  width / height
      child: Container(
        decoration: BoxDecoration(
          boxShadow: List.filled(
            5,
            const BoxShadow(
                color: Color.fromARGB(137, 209, 188, 188),
                blurRadius: 5,
                spreadRadius: 0.6),
          ),
          borderRadius: BorderRadius.circular(35),
          border: Border.all(
            color: const Color.fromARGB(82, 255, 255, 255),
            width: 1.5,
            style: BorderStyle.solid,
          ),
          image: const DecorationImage(
              image: AssetImage(
                AssetsData.images,
              ),
              fit: BoxFit.fill),
        ),
      ),
    );
  }
}
