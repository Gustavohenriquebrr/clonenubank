import 'package:clonenubank/Pages/Home/home_pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clone Nubank',
      theme: ThemeData(),
      home: const HomePages(),

    );
  }
}
