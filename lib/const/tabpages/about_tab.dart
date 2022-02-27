import 'package:flutter/material.dart';
import 'package:portfolio/const/about/counstome_page.dart';

class AboutTabPage extends StatelessWidget {
  const AboutTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomPage(
      imgUrl: 'https://www.kindpng.com/picc/b/44-446565_biohazard-sign-png.png',
      maintitle: 'About Me',
      discription:
          'A Flutter developer will provide you with consistent performance from designing the application, planning a timeline, and developing any complicated application within a short time compared to any other native apps out there.',
      bottomtitleleft: 'Skills',
      bottomtitleright: 'Softwares',
      buttomimageone:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbHrevSZOwEpEt0nwf3cBvCF-zjlFDNoWenJqhm176KYgUBEWbR8BxXbZwZMYlWjtl-Gg&usqp=CAU',
      buttomimagetwo:
          'https://peterhdd.gallerycdn.vsassets.io/extensions/peterhdd/dartgettersetter/1.0.2/1618520673981/Microsoft.VisualStudio.Services.Icons.Default',
      buttomimagethree:
          'https://cdn.iconscout.com/icon/free/png-256/adobe-2752254-2285071.png',
    );
  }
}
