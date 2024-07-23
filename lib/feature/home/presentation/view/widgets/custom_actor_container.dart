import 'package:flutter/material.dart';
import 'package:la_case_de_papel/core/models/actor_model.dart';
import 'package:la_case_de_papel/feature/actor_details/presentation/view/actor_details.dart';
import 'package:la_case_de_papel/feature/home/presentation/view/widgets/custom_cached_network_image.dart';

class CustomActorContainer extends StatelessWidget {
  const CustomActorContainer({
    super.key,
    required this.actor,
  });
  final ActorModel actor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ActorDetails(actor: actor),
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.all(8),
            width: 200,
            height: 200,
            color: Colors.grey,
            child: CustomCachedNetworkImage(
              imagePath: actor.character.image.medium,
            ),
          ),
          Align(
            alignment: const Alignment(-.1, .8),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              color: Colors.grey[100],
              child: Text(
                actor.character.name,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
