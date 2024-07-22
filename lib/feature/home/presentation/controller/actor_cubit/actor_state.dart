
import 'package:la_case_de_papel/core/models/actor_model.dart';

sealed class ActorState {}

final class ActorInitial extends ActorState {}

final class ActorLoading extends ActorState {}

final class ActorLoaded extends ActorState {
  final List<ActorModel> actors;
  ActorLoaded(this.actors);
}

final class ActorError extends ActorState {
  final String message;
  ActorError(this.message);
}
