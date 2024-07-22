import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:la_case_de_papel/feature/home/data/repo/home_repo.dart';
import 'package:la_case_de_papel/feature/home/presentation/controller/actor_cubit/actor_state.dart';

class ActorCubit extends Cubit<ActorState> {
  ActorCubit(this.homeRepo) : super(ActorInitial());
  final HomeRepo homeRepo;
  static ActorCubit get(context) => BlocProvider.of(context);

  Future<void> getActors() async {
    emit(ActorLoading());
    final result = await homeRepo.getCharacter();
    result.fold(
      (message) {
        log("failure with message $message");
        emit(ActorError(message));
      },
      (actors) {
        log("====================We Did it====================");
        emit(
          ActorLoaded(actors),
        );
      },
    );
  }
}
