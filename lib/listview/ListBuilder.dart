import 'package:flutter/material.dart';

class ListViewBuilder extends StatelessWidget {
  final List<String> items = List.generate(20, (index) => 'Item ke-${index + 1}');

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(items[index]),
          leading: CircleAvatar(child: Text('${index + 1}')),
        );
      },
    );
  }
}