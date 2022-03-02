import 'package:flutter/material.dart';
import 'package:portfolio/pages/mymodel.dart';
import 'package:portfolio/tabpages/custom_widgets.dart/bottum_stack_image.dart';
import 'package:portfolio/tabpages/custom_widgets.dart/main_image.dart';
import 'package:portfolio/tabpages/custom_widgets.dart/under_logo_row_card.dart';
import 'package:portfolio/tabpages/dragable_scroll_card.dart';
import 'package:portfolio/tabpages/hero_widget.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({
    Key? key,
    required this.data,
  }) : super(key: key);

  final Data? data;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
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
                      height: MediaQuery.of(context).size.height * 0.26,
                      // width: MediaQuery.of(context).size.width * 0.8,
                      child: _roudContainer(imeUrl: mydata.mainImage!),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Text(
                      mydata.underLogoTitle!,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: SizedBox(height: 60, child: underLogoRow()),
                  )
                ],
              ),
            ),
            const SizedBox(height: 25),
            SizedBox(
              child: dragableWidget(),
            ),
          ],
        ),
      ),
    );
  }

  ListView underLogoRow() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: widget.data!.underLogoRow.length,
      itemBuilder: (BuildContext context, int index) {
        return UnderlogoRowCard(
          name: widget.data!.underLogoRow[index]!.name,
          icon: widget.data!.underLogoRow[index]!.icon,
        );
      },
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
              shrinkWrap: true,
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
          widget.data!.myname!,
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
        SizedBox(
          height: 290,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: widget.data!.bottumCard.length,
            itemBuilder: (BuildContext context, int index) {
              return myScrollCard(
                name: widget.data!.bottumCard[index]!.name,
                imageUrl: widget.data!.bottumCard[index]!.imageUrl,
                time: widget.data!.bottumCard[index]!.time,
                details: widget.data!.bottumCard[index]!.details,
              );
            },
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  DragableScrollCard myScrollCard(
          {required String imageUrl,
          required String name,
          required String time,
          required String details}) =>
      DragableScrollCard(
          cardimageurl: imageUrl, title: name, time: time, details: details);

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

  ListView _bottumImages() {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: widget.data!.bottumlogo.length,
        itemBuilder: (BuildContext context, int index) {
          return Align(
            widthFactor: 0.7,
            alignment: Alignment.centerLeft,
            child: _bottumImageContainer(
              imageUrl: widget.data!.bottumlogo[index]!.imageUrl,
            ),
          );
        });
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
