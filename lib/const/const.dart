import 'package:flutter/material.dart';
import 'package:portfolio/const/about/about_me.dart';
import 'package:portfolio/const/about/counstome_page.dart';
import 'package:portfolio/const/tabpages/about_tab.dart';
import 'package:portfolio/const/tabpages/study_tab.dart';

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
