import 'package:la_case_de_papel/core/models/character_model.dart';
import 'package:la_case_de_papel/core/models/person_model.dart';

class ActorModel {
  final PersonModel person;
  final CharacterModel character;
  final bool self;
  final bool voice;

  ActorModel(
      {required this.person,
      required this.character,
      required this.self,
      required this.voice});

  factory ActorModel.fromJson(Map<String, dynamic> jsonData) {
    return ActorModel(
        person: PersonModel.fromJson(jsonData['person']),
        character: CharacterModel.fromJson(jsonData['character']),
        self: jsonData['self'],
        voice: jsonData['voice']);
  }
}
