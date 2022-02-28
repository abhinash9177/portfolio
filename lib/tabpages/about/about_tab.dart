import 'package:flutter/material.dart';
import 'package:portfolio/tabpages/about/about_detail.dart';
import 'package:portfolio/tabpages/coustom_page.dart';

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
      imgUrl: 'https://www.kindpng.com/picc/b/44-446565_biohazard-sign-png.png',
      maintitle: 'About Me',
      discription: discription,
      bottomtitleleft: 'Skills',
      bottomtitleright: 'Softwares',
      buttomimageone:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbHrevSZOwEpEt0nwf3cBvCF-zjlFDNoWenJqhm176KYgUBEWbR8BxXbZwZMYlWjtl-Gg&usqp=CAU',
      buttomimagetwo:
          'https://peterhdd.gallerycdn.vsassets.io/extensions/peterhdd/dartgettersetter/1.0.2/1618520673981/Microsoft.VisualStudio.Services.Icons.Default',
      buttomimagethree:
          'https://cdn.iconscout.com/icon/free/png-256/adobe-2752254-2285071.png',
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
