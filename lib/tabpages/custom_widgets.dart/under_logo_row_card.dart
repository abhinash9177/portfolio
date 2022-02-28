import 'package:flutter/material.dart';

class UnderlogoRowCard extends StatefulWidget {
  const UnderlogoRowCard({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  State<UnderlogoRowCard> createState() => _UnderlogoRowCardState();
}

class _UnderlogoRowCardState extends State<UnderlogoRowCard> {
  IconData icon = const IconData(0xea00, fontFamily: 'MaterialIcons');
  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 50,
        width: 120,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            const SizedBox(width: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [Text(widget.name), Text(widget.name)],
              ),
            )
          ],
        ),
      ),
    );
  }
}
