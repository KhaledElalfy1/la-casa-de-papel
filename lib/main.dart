import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  // https://api.tvmaze.com/shows/27436/cast
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(),
    );
  }
} //character 