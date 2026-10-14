import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Ini adalah widget Column 1'),
        Text('Ini adalah widget Column 2'),
        Text('Ini adalah widget Column 3'),
        FlutterLogo(
          size: 50,
          textColor: Colors.blue,
        )
      ],
    );
  }
}