import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:la_case_de_papel/feature/home/data/repo/home_repo.dart';
import 'package:la_case_de_papel/feature/home/presentation/controller/actor_cubit/actor_cubit.dart';
import 'package:la_case_de_papel/feature/home/presentation/view/home_view.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => ActorCubit(HomeRepo())..getActors(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
} //character 