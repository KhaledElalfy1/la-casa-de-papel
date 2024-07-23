import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomLaodingContainer extends StatelessWidget {
  const CustomLaodingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        margin: const EdgeInsets.all(8),
        width: 200,
        height: 200,
        color: Colors.grey,
      ),
    );
  }
}
