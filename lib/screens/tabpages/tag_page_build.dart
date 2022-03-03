import 'package:flutter/material.dart';
import 'package:portfolio/screens/detailpages/detals_page_build.dart';
import 'package:portfolio/screens/api/mymodel.dart';
import 'dart:async';
import 'package:portfolio/screens/api/server.dart';
import 'package:portfolio/screens/tabpages/coustom_page.dart';

class TabBuildPage extends StatefulWidget {
  const TabBuildPage({Key? key, required this.field}) : super(key: key);
  final String field;

  @override
  _CustomBuildState createState() => _CustomBuildState();
}

class _CustomBuildState extends State<TabBuildPage> {
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
                return Center(child: CustomPage(data: data, onClick: onClick));
              }
              return const Text('no data');
            }),
      ),
    );
  }

  onClick() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => CustomBuild(
                field: widget.field,
              )),
    );
  }
}
