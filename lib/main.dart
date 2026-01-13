// Danu Trianggoro / C2C023079
import 'package:flutter/material.dart';
import 'praktikum_menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PraktikumMenu(),
    );
  }
}
