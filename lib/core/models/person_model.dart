import 'package:la_case_de_papel/core/models/country_model.dart';
import 'package:la_case_de_papel/core/models/image_model.dart';

class PersonModel {
  final int id;
  final String url;
  final CountryModel country;
  final String birthday;
  final String? deathday;
  final String gender;
  final ImageModel image;
  final int update;

  PersonModel(
      {required this.id,
      required this.url,
      required this.country,
      required this.birthday,
      required this.deathday,
      required this.gender,
      required this.image,
      required this.update});

  factory PersonModel.fromJson(Map<String, dynamic> jsonData) {
    return PersonModel(
      id: jsonData['id'],
      url: jsonData['url'],
      country: CountryModel.fromJson(jsonData['country']),
      birthday: jsonData['birthday'],
      deathday: jsonData['deathday'],
      gender: jsonData['gender'],
      image: ImageModel.fromJson(jsonData['image']),
      update: jsonData['update'],
    );
  }
}
