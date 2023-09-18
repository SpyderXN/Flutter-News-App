import 'package:flutter/material.dart';
import 'package:news_flutter/pages/home_page.dart';
import 'package:news_flutter/utils/routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => const HomePage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
      },
    );
  }
}
