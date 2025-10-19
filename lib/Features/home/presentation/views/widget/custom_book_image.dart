import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.5 / 4, //*  width / height
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.fill,
          errorWidget:
              (context, url, error) => const Icon(Icons.error, size: 50),
        ),
        // child: Container(
        //   decoration: BoxDecoration(
        //     boxShadow: List.filled(
        //       5,
        //       const BoxShadow(
        //         color: Color.fromARGB(137, 209, 188, 188),
        //         blurRadius: 5,
        //         spreadRadius: 0.6,
        //       ),
        //     ),
        //     borderRadius: BorderRadius.circular(35),
        //     border: Border.all(
        //       color: const Color.fromARGB(82, 255, 255, 255),
        //       width: 1.5,
        //       style: BorderStyle.solid,
        //     ),
        //     //cachednetworkimage
        //     image:  DecorationImage(
        //       image: NetworkImage(imageUrl),
        //       // image: AssetImage(AssetsData.images),
        //       fit: BoxFit.fill,
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
