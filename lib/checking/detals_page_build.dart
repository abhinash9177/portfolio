import 'package:flutter/material.dart';
import 'package:portfolio/checking/details_page.dart';
import 'package:portfolio/checking/mymodel.dart';
import 'dart:async';

import 'package:portfolio/checking/server.dart';

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
    data = MyService.getdataFromJson();
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
                return Center(child: DetailsPage(data: data));
              }
              return const Text('no data');
            }),
      ),
    );
  }
}
