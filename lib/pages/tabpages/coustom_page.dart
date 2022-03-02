import 'package:flutter/material.dart';
import 'package:portfolio/pages/mymodel.dart';
import 'package:portfolio/tabpages/custom_widgets.dart/bottum_stack_image.dart';
import 'package:portfolio/tabpages/custom_widgets.dart/main_image.dart';
import 'package:portfolio/tabpages/hero_widget.dart';

class CustomPage extends StatefulWidget {
  const CustomPage({Key? key, required this.data, required this.onClick})
      : super(key: key);

  final Data? data;

  final VoidCallback onClick;

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
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 25),
                          Center(
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height * 0.26,
                              //width: MediaQuery.of(context).size.width * 0.6,
                              child: _roudContainer(
                                  imeUrl: widget.data!.mainImage!),
                            ),
                          ),
                          const SizedBox(height: 25),
                          _aboutMeField()
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      left: 250,
                      bottom: -20,
                      child: ElevatedButton(
                        onPressed: widget.onClick,
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

  Column _aboutMeField() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.data!.title!,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 25),
        Text(
          widget.data!.discription!,
          maxLines: 4,
        ),
        const SizedBox(height: 20),
        _bottomTitles(),
        const SizedBox(height: 20),
        SizedBox(height: 50, child: _bottumImages()),
        const SizedBox(height: 20)
      ],
    );
  }

  Row _bottomTitles() {
    return Row(
      children: [
        Text(
          widget.data!.bottomtag[0]!.name,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 20),
        Text(
          widget.data!.bottomtag[1]!.name,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        )
      ],
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
