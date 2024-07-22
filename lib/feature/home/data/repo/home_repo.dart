import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:la_case_de_papel/core/api/dio_consumer.dart';
import 'package:la_case_de_papel/core/errors/exceptions.dart';
import 'package:la_case_de_papel/core/models/actor_model.dart';

class HomeRepo {
  final DioConsumer _dio = DioConsumer(dio: Dio());
  List<ActorModel> actorsList = [];
  Future<Either<String, List<ActorModel>>> getCharacter() async {
    try {
      final actors = await _dio.get("");
      for (var actor in actors) {
        actorsList.add(ActorModel.fromJson(actor));
      }
      return right(actorsList);
    } on ServerException catch (e) {
      return left(e.errorModel.eMessage);
    }
  }
}
