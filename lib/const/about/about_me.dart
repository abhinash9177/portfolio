import 'package:flutter/material.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    elevation: 6.0,
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: SizedBox(
                                height: MediaQuery.of(context).size.width * 0.6,
                                width: MediaQuery.of(context).size.width * 0.6,
                                child: _roudContainer(
                                    imeUrl:
                                        'https://www.kindpng.com/picc/b/44-446565_biohazard-sign-png.png'),
                              ),
                            ),
                            const SizedBox(height: 25),
                            _aboutMeField()
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      left: 250,
                      bottom: -20,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Icon(Icons.arrow_forward),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(20),
                        ),
                      ))
                ],
              ),
              const SizedBox(height: 25)
            ],
          ),
        ),
      ),
    );
  }

  GestureDetector _aboutMeField() {
    return GestureDetector(
      onTap: (() {}),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'About Me',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 25),
          const Text(
            'A Flutter developer will provide you with consistent performance from designing the application, planning a timeline, and developing any complicated application within a short time compared to any other native apps out there.',
            maxLines: 4,
          ),
          const SizedBox(height: 20),
          _bottomTitles(),
          const SizedBox(height: 20),
          SizedBox(height: 50, child: _bottumImages()),
          const SizedBox(height: 20)
        ],
      ),
    );
  }

  Row _bottomTitles() {
    return Row(
      children: const [
        Text(
          'Skills',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 20),
        Text(
          'Softwares',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  Stack _bottumImages() {
    return Stack(
      children: [
        Positioned(
          left: 0,
          child: _bottumImageContainer(
              imageUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbHrevSZOwEpEt0nwf3cBvCF-zjlFDNoWenJqhm176KYgUBEWbR8BxXbZwZMYlWjtl-Gg&usqp=CAU'),
        ),
        Positioned(
          left: 35,
          child: _bottumImageContainer(
              imageUrl:
                  'https://peterhdd.gallerycdn.vsassets.io/extensions/peterhdd/dartgettersetter/1.0.2/1618520673981/Microsoft.VisualStudio.Services.Icons.Default'),
        ),
        Positioned(
          left: 75,
          child: _bottumImageContainer(
              imageUrl:
                  'https://cdn.iconscout.com/icon/free/png-256/adobe-2752254-2285071.png'),
        ),
      ],
    );
  }

  Stack _bottumImageContainer({required String imageUrl}) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        const CircleAvatar(
          radius: 24,
          foregroundColor: Colors.white,
          backgroundColor: Colors.white,
        ),
        Positioned(
          left: 4,
          top: 4,
          child: CircleAvatar(
            radius: 20,
            foregroundImage: NetworkImage(imageUrl),
            backgroundColor: Colors.white,
          ),
        ),
      ],
    );
  }

  GestureDetector _roudContainer({
    required String imeUrl,
  }) {
    return GestureDetector(
        onTap: () {},
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image(
              image: NetworkImage(imeUrl),
            ),
          ),
        ));
  }
}
