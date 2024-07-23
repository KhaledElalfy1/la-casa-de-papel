import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ActorImageSection extends StatelessWidget {
  const ActorImageSection({
    super.key,
    required this.personImage,
    required this.characterImage,
  });

  final String personImage, characterImage;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
              opacity: .5,
              fit: BoxFit.fill,
              image: CachedNetworkImageProvider(personImage),
            ),
          ),
        ),
        Positioned(
          bottom: -70,
          right: MediaQuery.sizeOf(context).width / 5,
          child: CircleAvatar(
            radius: 125,
            backgroundImage: CachedNetworkImageProvider(
              characterImage,
            ),
          ),
        )
      ],
    );
  }
}
