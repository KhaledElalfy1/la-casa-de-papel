

class ImageModel {
  final String medium;
  final String original;

  ImageModel({required this.medium, required this.original});

  factory ImageModel.fromJson(Map<String, dynamic> jsonData) {
    return ImageModel(medium: jsonData['medium'], original: jsonData['original']);
  }
}
