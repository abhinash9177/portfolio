import 'package:flutter/material.dart';
import 'package:portfolio/tabpages/about/about_tab.dart';
import 'package:portfolio/tabpages/study_tab.dart';

List<Widget> get widgetList {
  return <Widget>[
    const AboutTabPage(),
    const StudyTabPage(),
    const Text(
      'Index 2: School',
    ),
    const Text(
      'Index 3: Experience',
    )
  ];
}
