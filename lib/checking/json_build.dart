import 'package:flutter/material.dart';
import 'package:portfolio/checking/check_build.dart';
import 'package:portfolio/checking/mymodel.dart';
import 'package:portfolio/checking/passengerserver.dart';
import 'package:portfolio/checking/server.dart';

import 'dart:convert';
import 'dart:async';

import 'package:portfolio/checking/user_model.dart';

class CustomBuild extends StatefulWidget {
  const CustomBuild({Key? key}) : super(key: key);

  @override
  _CustomBuildState createState() => _CustomBuildState();
}

class _CustomBuildState extends State<CustomBuild> {
  late Future<MyModel?> data;

  @override
  void initState() {
    super.initState();
    data = MyService.getPassenger();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<MyModel?>(
            future: data,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Text('Loading...');
              } else if (snapshot.hasData) {
                final data = snapshot.data!.data[0];
                return Center(child: JsonBuildPage(data: data));
              }
              return const Text('no data');
            }),
      ),
    );
  }
}

class Airlinedata extends StatelessWidget {
  const Airlinedata({
    Key? key,
    required this.data,
  }) : super(key: key);

  final Data? data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Center(
        child: Column(
          children: [
            Text(
              data!.bottomtag[0]!.name,
              style: const TextStyle(fontSize: 25),
            ),
            const SizedBox(height: 10),
            Text(
              data!.discription!,
            ),
            const SizedBox(height: 10),
            Text(
              data!.bottomtag[1]!.name,
            ),
            const SizedBox(height: 10),
            Text(
              data!.bottumCard[0]!.name,
            ),
          ],
        ),
      ),
    );
  }
}
