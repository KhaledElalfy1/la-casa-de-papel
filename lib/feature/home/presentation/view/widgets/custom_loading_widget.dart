import 'package:flutter/material.dart';
import 'package:la_case_de_papel/feature/home/presentation/view/widgets/custom_laoding_container.dart';


class CustomLoadingWidget extends StatelessWidget {
  const CustomLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 10,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) =>const CustomLaodingContainer(),
    );
  }
}
