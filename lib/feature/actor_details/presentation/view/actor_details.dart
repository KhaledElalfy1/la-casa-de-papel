
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
          
        ],
      ),
    );
  }
}

