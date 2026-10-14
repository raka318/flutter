import 'package:flutter/material.dart';

class ListViewCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.custom(
      childrenDelegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(
            height: 50,
            alignment: Alignment.center,
            color: index.isEven ? Colors.blue[100] : Colors.blue[200],
            child: Text('Custom Item ke-${index + 1}'),
          );
        },
        childCount: 10,
      ),
    );
  }
}