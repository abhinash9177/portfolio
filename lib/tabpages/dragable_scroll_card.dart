import 'package:flutter/material.dart';

class DragableScrollCard extends StatefulWidget {
  const DragableScrollCard({
    Key? key,
    required this.cardimageurl,
    required this.title,
    required this.time,
    required this.details,
  }) : super(key: key);
  final String cardimageurl;
  final String title;
  final String time;
  final String details;

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
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                SizedBox(
                  width: 80,
                  child: FadeInImage.assetNetwork(
                    placeholder: 'assets/no-image.jpg',
                    image: widget.cardimageurl,
                  ),
                ),
                const SizedBox(height: 10),
                Text(widget.title,
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold)),
                const SizedBox(height: 5),
                Text(widget.time),
                const SizedBox(height: 10),
                Text(
                  widget.details,
                  maxLines: 6,
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
