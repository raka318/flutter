import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Ini adalah widget Row 1'),
        Text('Ini adalah widget Row 2'),
        Text('Ini adalah widget Row 3'),
        FlutterLogo(
          size: 50,
          textColor: Colors.blue,
        )
      ],
    );
  }
}