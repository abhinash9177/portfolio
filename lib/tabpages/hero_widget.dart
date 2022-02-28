import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({Key? key, required this.tag, required this.child})
      : super(key: key);
  final String tag;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Hero(
        transitionOnUserGestures: true,
        tag: tag,
        child: Material(type: MaterialType.transparency, child: child));
  }
}
