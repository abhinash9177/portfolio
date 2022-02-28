import 'package:flutter/material.dart';

class DragableScrollCard extends StatefulWidget {
  const DragableScrollCard({
    Key? key,
    required this.cardimageurl,
    required this.title,
    required this.time,
    required this.aboutit,
  }) : super(key: key);
  final String cardimageurl;
  final String title;
  final String time;
  final String aboutit;

  @override
  State<DragableScrollCard> createState() => _DragableScrollCardState();
}

class _DragableScrollCardState extends State<DragableScrollCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: SizedBox(
        height: 280,
        width: 210,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 80, child: Image.network(widget.cardimageurl)),
            const SizedBox(height: 20),
            Text(widget.title),
            Text(widget.time),
            Text(widget.aboutit),
          ],
        ),
      ),
    );
  }
}
