import 'package:la_case_de_papel/core/models/image_model.dart';

class CharacterModel {
  final int id;
  final String url;
  final String name;
  final ImageModel image;

  CharacterModel(
      {required this.id,
      required this.url,
      required this.name,
      required this.image});

  factory CharacterModel.fromJson(Map<String, dynamic> jsonData) {
    return CharacterModel(
      id: jsonData['id'],
      url: jsonData['url'],
      name: jsonData['name'],
      image: ImageModel.fromJson(jsonData['image']),
    );
  }
}
