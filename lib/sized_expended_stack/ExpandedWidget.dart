import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(color: Colors.black, width: 100),
        Expanded(
          child: Container(
            color: Colors.redAccent,
            height: 50,
            child: Text("Satu"),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.greenAccent,
            height: 50,
            child: Text("Dua"),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.blueAccent,
            height: 50,
            child: Text("Tiga"),
          ),
        ),
      ],
    );
  }
}
