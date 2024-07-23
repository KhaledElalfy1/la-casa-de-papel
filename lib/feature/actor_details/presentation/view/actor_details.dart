import 'package:flutter/material.dart';
import 'package:la_case_de_papel/core/models/actor_model.dart';
import 'package:la_case_de_papel/feature/actor_details/presentation/view/widgets/actor_image_section.dart';

class ActorDetails extends StatelessWidget {
  const ActorDetails({super.key, required this.actor});
  final ActorModel actor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          ActorImageSection(
            personImage: actor.person.image.original,
            characterImage: actor.character.image.medium,
          ),
          const SizedBox(
            height: 70,
          ),
          Center(
            child: Text(
              actor.person.name,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              actor.character.name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              'Birthday: ${actor.person.birthday}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              'Country: ${actor.person.country?.name ?? 'Unknown'}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              actor.person.gender,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
