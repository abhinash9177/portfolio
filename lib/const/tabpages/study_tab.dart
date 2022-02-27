import 'package:flutter/material.dart';
import 'package:portfolio/const/about/counstome_page.dart';

class StudyTabPage extends StatelessWidget {
  const StudyTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomPage(
      imgUrl:
          'https://www.clipartmax.com/png/full/153-1534898_%C2%A0-wolf-head-logo.png',
      maintitle: 'Study',
      discription:
          'By drawing on a fundamental description of cause and effect found in Einstein’s theory of special relativity, researchers from Imperial College London have come up with a way to help AIs make better guesses too.',
      bottomtitleleft: 'Eduction',
      bottomtitleright: 'Field',
      buttomimageone:
          'https://seeklogo.com/images/I/instagram-logo-041EABACE1-seeklogo.com.png',
      buttomimagetwo:
          'https://seeklogo.com/images/I/instagram-logo-041EABACE1-seeklogo.com.png',
      buttomimagethree:
          'https://seeklogo.com/images/I/instagram-logo-041EABACE1-seeklogo.com.png',
    );
  }
}
