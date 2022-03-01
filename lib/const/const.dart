import 'package:flutter/material.dart';
import 'package:portfolio/pages/detals_page_build.dart';
import 'package:portfolio/pages/tabpages/tag_page_build.dart';
import 'package:portfolio/tabpages/about/about_tab.dart';

List<Widget> get widgetList {
  return <Widget>[
    const TabBuildPage(
      field: 'about',
    ),
    const TabBuildPage(
      field: 'study',
    ),
    const TabBuildPage(
      field: 'work',
    ),
    const TabBuildPage(
      field: 'experience',
    )
  ];
}
