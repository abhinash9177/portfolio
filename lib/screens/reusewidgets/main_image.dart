import 'package:flutter/material.dart';

class MainImage extends StatelessWidget {
  const MainImage({Key? key, required this.imeUrl}) : super(key: key);
  final String imeUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: FadeInImage.assetNetwork(
          placeholder: 'assets/no-image.jpg',
          image: imeUrl,
        ),
      ),
    );
  }
}
