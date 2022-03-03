import 'package:flutter/material.dart';
import 'package:portfolio/screens/tabpages/tag_page_build.dart';

List<Widget> get widgetList {
  return <Widget>[
    const TabBuildPage(
      field: 'about',
    ),
    const TabBuildPage(
      field: 'study',
    ),
    const TabBuildPage(
      field: 'experience',
    ),
    const TabBuildPage(
      field: 'contact',
    ),
  ];
}
