import 'package:flutter/material.dart';
import 'package:portfolio/const/icons.dart';

class UnderlogoRowCard extends StatefulWidget {
  const UnderlogoRowCard({Key? key, required this.name, required this.icon})
      : super(key: key);
  final String name;
  final String icon;
  @override
  State<UnderlogoRowCard> createState() => _UnderlogoRowCardState();
}

class _UnderlogoRowCardState extends State<UnderlogoRowCard> {
  IconData icon = const IconData(0xea00, fontFamily: 'MaterialIcons');
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: Colors.green[300],
      child: SizedBox(
        width: 120,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Icon(iconMapping[widget.icon])),
            const SizedBox(width: 5),
            Center(
                child: Text(
              widget.name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ))
          ],
        ),
      ),
    );
  }
}
