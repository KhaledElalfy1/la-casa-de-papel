import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:la_case_de_papel/feature/home/presentation/view/widgets/custom_laoding_container.dart';

class CustomCachedNetworkImage extends StatelessWidget {
  const CustomCachedNetworkImage({super.key, required this.imagePath});
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imagePath,
      placeholder: (context, url) => const CustomLaodingContainer(),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
