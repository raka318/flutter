import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(height: 200, width: 200, color: Colors.red),
        Positioned(
          bottom: 10,
          left: 10,
          child: Icon(Icons.favorite, color: Colors.white),
        ),
        Positioned(
          top: 10,
          left: 10,
          child: Text("Label", style: TextStyle(color: Colors.white)),
        ),
        Positioned(
          top: 10,
          left: 10,
          right: 10,
          child: Container(color: Colors.blue, width: 100, height: 100),
        ),
      ],
    );
  }
}
