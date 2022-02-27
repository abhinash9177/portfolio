import 'package:flutter/material.dart';

class CustomPage extends StatefulWidget {
  const CustomPage(
      {Key? key,
      required this.imgUrl,
      required this.maintitle,
      required this.discription,
      required this.bottomtitleleft,
      required this.bottomtitleright,
      required this.buttomimageone,
      required this.buttomimagetwo,
      required this.buttomimagethree})
      : super(key: key);

  final String imgUrl;
  final String maintitle;
  final String discription;
  final String bottomtitleleft;
  final String bottomtitleright;
  final String buttomimageone;
  final String buttomimagetwo;
  final String buttomimagethree;

  @override
  State<CustomPage> createState() => _CustomPageState();
}

class _CustomPageState extends State<CustomPage> {
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
                                child: _roudContainer(imeUrl: widget.imgUrl),
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
          Text(
            widget.maintitle,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 25),
          Text(
            widget.discription,
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
      children: [
        Text(
          widget.bottomtitleleft,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 20),
        Text(
          widget.bottomtitleright,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  Stack _bottumImages() {
    return Stack(
      children: [
        Positioned(
          left: 0,
          child: _bottumImageContainer(imageUrl: widget.buttomimageone),
        ),
        Positioned(
          left: 35,
          child: _bottumImageContainer(imageUrl: widget.buttomimagetwo),
        ),
        Positioned(
          left: 75,
          child: _bottumImageContainer(imageUrl: widget.buttomimagethree),
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
