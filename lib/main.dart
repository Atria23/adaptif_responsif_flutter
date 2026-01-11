import 'package:flutter/material.dart';
import 'praktikum2_1_mediaquery.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Praktikum21MediaQuery(), // ganti sesuai praktikum
    );
  }
}
