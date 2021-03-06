import 'package:flutter/material.dart';
import 'package:portfolio/screens/detailpages/details_page.dart';
import 'package:portfolio/screens/api/mymodel.dart';
import 'dart:async';
import 'package:portfolio/screens/api/server.dart';

class CustomBuild extends StatefulWidget {
  const CustomBuild({Key? key, required this.field}) : super(key: key);
  final String field;

  @override
  _CustomBuildState createState() => _CustomBuildState();
}

class _CustomBuildState extends State<CustomBuild> {
  late Future<MyModel?> data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<MyModel?>(
            future: MyService.getdataFromJson(widget.field),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const SizedBox(
                  height: 100,
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ),
                );
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
