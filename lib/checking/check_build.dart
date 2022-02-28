import 'package:flutter/material.dart';
import 'package:portfolio/checking/mymodel.dart';
import 'package:portfolio/tabpages/custom_widgets.dart/bottum_stack_image.dart';
import 'package:portfolio/tabpages/custom_widgets.dart/main_image.dart';
import 'package:portfolio/tabpages/custom_widgets.dart/under_logo_row_card.dart';
import 'package:portfolio/tabpages/dragable_scroll_card.dart';
import 'package:portfolio/tabpages/hero_widget.dart';

class JsonBuildPage extends StatefulWidget {
  const JsonBuildPage({
    Key? key,
    required this.data,
  }) : super(key: key);

  final Data? data;

  @override
  State<JsonBuildPage> createState() => _JsonBuildPageState();
}

class _JsonBuildPageState extends State<JsonBuildPage> {
  @override
  Widget build(BuildContext context) {
    final Data? mydata = widget.data;
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: SizedBox(
                      child: Text(
                        mydata!.title!,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Center(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.width * 0.4,
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: _roudContainer(imeUrl: mydata.mainImage!),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Text(
                      mydata.underLogoTitle!,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: SizedBox(height: 80, child: underLogoRow()),
                    ),
                  )
                ],
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

  Row underLogoRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        UnderlogoRowCard(
          name: widget.data!.underLogoRow[0]!.name,
        ),
        UnderlogoRowCard(
          name: widget.data!.underLogoRow[1]!.name,
        ),
        UnderlogoRowCard(
          name: widget.data!.underLogoRow[2]!.name,
        ),
        UnderlogoRowCard(
          name: widget.data!.underLogoRow[3]!.name,
        ),
      ],
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
          widget.data!.title!,
          style: const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 25),
        Text(
          widget.data!.discription!,
          style: const TextStyle(color: Colors.white),
          maxLines: 4,
        ),
        const SizedBox(height: 20),
        _bottomTitles(),
        const SizedBox(height: 20),
        SizedBox(height: 50, child: _bottumImages()),
        const SizedBox(height: 20),
        Text(
          widget.data!.aboveCardName!,
          style: const TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              myScrollCard(
                  imageUrl: widget.data!.bottumCard[0]!.imageUrl,
                  name: widget.data!.bottumCard[0]!.name),
              myScrollCard(
                  imageUrl: widget.data!.bottumCard[1]!.imageUrl,
                  name: widget.data!.bottumCard[1]!.name),
              myScrollCard(
                  imageUrl: widget.data!.bottumCard[2]!.imageUrl,
                  name: widget.data!.bottumCard[2]!.name),
            ],
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  DragableScrollCard myScrollCard(
          {required String imageUrl, required String name}) =>
      DragableScrollCard(
          cardimageurl: imageUrl,
          title: name,
          time: '2021-2022',
          aboutit: 'Developed a mobile application');

  Row _bottomTitles() {
    return Row(
      children: [
        _bottomTitelsCustom(title: widget.data!.bottomtag[0]!.name),
        const SizedBox(width: 10),
        _bottomTitelsCustom(title: widget.data!.bottomtag[1]!.name),
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
          child: _bottumImageContainer(
              imageUrl: widget.data!.bottumlogo[0]!.imageUrl),
        ),
        Positioned(
          left: 35,
          child: _bottumImageContainer(
              imageUrl: widget.data!.bottumlogo[1]!.imageUrl),
        ),
        Positioned(
          left: 75,
          child: _bottumImageContainer(
              imageUrl: widget.data!.bottumlogo[2]!.imageUrl),
        ),
      ],
    );
  }

  BottumStackImage _bottumImageContainer({required String imageUrl}) {
    return BottumStackImage(
      imageUrl: imageUrl,
    );
  }

  MainImage _roudContainer({
    required String imeUrl,
  }) {
    return MainImage(
      imeUrl: imeUrl,
    );
  }
}
