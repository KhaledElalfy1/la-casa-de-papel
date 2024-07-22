import 'package:flutter/material.dart';
import 'package:la_case_de_papel/core/models/actor_model.dart';
import 'package:la_case_de_papel/feature/home/presentation/view/widgets/custom_actor_container.dart';

class SuccessBody extends StatelessWidget {
  const SuccessBody({
    super.key,
    required this.actors,
  });
  final List<ActorModel> actors;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: actors.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) => CustomActorContainer(
        actor: actors[index],
      ),
    );
  }
}