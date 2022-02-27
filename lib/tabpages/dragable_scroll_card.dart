import 'package:flutter/material.dart';

class DragableScrollCard extends StatelessWidget {
  const DragableScrollCard({
    Key? key,
  }) : super(key: key);

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
            Text('mytext'),
            Text('mytext'),
            Text('mytext'),
          ],
        ),
      ),
    );
  }
}
