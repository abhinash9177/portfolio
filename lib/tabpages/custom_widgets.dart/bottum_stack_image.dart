import 'package:flutter/material.dart';

class BottumStackImage extends StatelessWidget {
  const BottumStackImage({Key? key, required this.imageUrl}) : super(key: key);
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
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
}
