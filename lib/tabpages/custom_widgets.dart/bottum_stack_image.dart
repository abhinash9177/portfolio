import 'package:flutter/material.dart';

class BottumStackImage extends StatefulWidget {
  const BottumStackImage({Key? key, required this.imageUrl}) : super(key: key);
  final String? imageUrl;

  @override
  State<BottumStackImage> createState() => _BottumStackImageState();
}

class _BottumStackImageState extends State<BottumStackImage> {
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
          child: widget.imageUrl != null
              ? CircleAvatar(
                  radius: 20,
                  foregroundImage: NetworkImage(widget.imageUrl!),
                  backgroundColor: Colors.white,
                )
              : const CircleAvatar(
                  radius: 20,
                  foregroundImage: AssetImage("assets/no-image.jpg"),
                  backgroundColor: Colors.white,
                ),
        ),
      ],
    );
  }
}
