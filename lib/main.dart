import 'package:flutter/material.dart';
import 'package:portfolio/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Abhinash Portfolio',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Circe'),
      home: const MyHomePage(),
    );
  }
}
