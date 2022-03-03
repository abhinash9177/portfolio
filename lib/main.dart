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
      title: 'Abhinash Profile',
      theme: ThemeData(primarySwatch: Colors.pink, fontFamily: 'Circe'),
      home: const MyHomePage(),
    );
  }
}
