import 'package:flutter/material.dart';
import 'package:portfolio/tabpages/dragable_scroll_card.dart';

class CustomDeailsPage extends StatefulWidget {
  const CustomDeailsPage(
      {Key? key,
      required this.imgUrl,
      required this.maintitle,
      required this.discription,
      required this.bottomtitleleft,
      required this.bottomtitleright,
      required this.buttomimageone,
      required this.buttomimagetwo,
      required this.buttomimagethree,
      required this.onClick})
      : super(key: key);

  final String imgUrl;
  final String maintitle;
  final String discription;
  final String bottomtitleleft;
  final String bottomtitleright;
  final String buttomimageone;
  final String buttomimagetwo;
  final String buttomimagethree;
  final VoidCallback onClick;

  @override
  State<CustomDeailsPage> createState() => _CustomDeailsPageState();
}

class _CustomDeailsPageState extends State<CustomDeailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 204, 203, 201),
      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Card(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: SizedBox(
                        child: Text(
                          widget.maintitle,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Center(
                      child: SizedBox(
                        height: MediaQuery.of(context).size.width * 0.6,
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: _roudContainer(imeUrl: widget.imgUrl),
                      ),
                    ),
                    const SizedBox(height: 25),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 25),
            SizedBox.expand(
              child: dragableWidget(),
            ),
          ],
        ),
      ),
    );
  }

  DraggableScrollableSheet dragableWidget() {
    return DraggableScrollableSheet(
      initialChildSize: 0.4,
      minChildSize: 0.4,
      maxChildSize: 0.9,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView.builder(
              controller: scrollController,
              itemCount: 1,
              itemBuilder: (context, index) {
                return _scrollContent();
              },
            ),
          ),
        );
      },
    );
  }

  Column _scrollContent() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.maintitle,
          style: const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 25),
        Text(
          widget.discription,
          style: const TextStyle(color: Colors.white),
          maxLines: 4,
        ),
        const SizedBox(height: 20),
        _bottomTitles(),
        const SizedBox(height: 20),
        SizedBox(height: 50, child: _bottumImages()),
        const SizedBox(height: 20),
        const Text(
          'Recent Projects',
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              myScrollCard(),
              myScrollCard(),
              myScrollCard(),
            ],
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  DragableScrollCard myScrollCard() => const DragableScrollCard();

  Row _bottomTitles() {
    return Row(
      children: [
        _bottomTitelsCustom(title: widget.bottomtitleleft),
        const SizedBox(width: 10),
        _bottomTitelsCustom(title: widget.bottomtitleright),
      ],
    );
  }

  Container _bottomTitelsCustom({required String title}) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ),
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

  Container _roudContainer({
    required String imeUrl,
  }) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image(
          image: NetworkImage(imeUrl),
        ),
      ),
    );
  }
}
