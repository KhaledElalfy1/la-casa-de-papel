class CountryModel {
  final String name;
  final String code;
  final String timezone;

  CountryModel(
      {required this.name, required this.code, required this.timezone});

  factory CountryModel.fromJson(Map<String, dynamic> jsonData) {
    return CountryModel(
        name: jsonData['name'],
        code: jsonData['code'],
        timezone: jsonData['timezone']);
  }
}
