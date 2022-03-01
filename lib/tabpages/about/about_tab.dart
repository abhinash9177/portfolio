import 'package:flutter/material.dart';
import 'package:portfolio/tabpages/about/about_detail.dart';
import 'package:portfolio/pages/tabpages/coustom_page.dart';

class AboutTabPage extends StatefulWidget {
  const AboutTabPage({Key? key}) : super(key: key);

  @override
  State<AboutTabPage> createState() => _AboutTabPageState();
}

const String discription =
    'Hi my name is Abhinash Pallepogu i am a mobile application developer i use flutter framework to develope mobile applications for both android and Ios';

class _AboutTabPageState extends State<AboutTabPage> {
  @override
  Widget build(BuildContext context) {
    return CustomPage(
      data: null,
      onClick: _onClickCallback,
    );
  }

  _onClickCallback() {
    print('callback hits');
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AbountDetialPage()),
    );
  }
}
