import 'package:flutter/material.dart';
import 'package:piano_app/Views/homeView.dart';

void main() {
  runApp(const PiaonApp());
}

class PiaonApp extends StatelessWidget {
  const PiaonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeView.id: (context) => const HomeView(),
      },
      initialRoute: HomeView.id,
    );
  }
}
