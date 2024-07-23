import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:la_case_de_papel/feature/home/presentation/controller/actor_cubit/actor_cubit.dart';
import 'package:la_case_de_papel/feature/home/presentation/controller/actor_cubit/actor_state.dart';
import 'package:la_case_de_papel/feature/home/presentation/view/widgets/custom_loading_widget.dart';

import 'widgets/success_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<ActorCubit, ActorState>(
          builder: (context, state) {
            if (state is ActorLoaded) {
              return SuccessBody(
                actors: state.actors,
              );
            } else if (state is ActorError) {
              return Center(
                child: Text(state.message),
              );
            } else {
              return const CustomLoadingWidget();
            }
          },
        ),
      ),
    );
  }
}
