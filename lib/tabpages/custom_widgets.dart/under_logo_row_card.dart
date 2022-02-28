import 'package:flutter/material.dart';

class UnderlogoRowCard extends StatelessWidget {
  const UnderlogoRowCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 50,
        width: 120,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.border_bottom,
              size: 45,
            ),
            const SizedBox(width: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: const [Text('data'), Text('subdata')],
              ),
            )
          ],
        ),
      ),
    );
  }
}
