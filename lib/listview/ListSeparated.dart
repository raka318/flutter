import 'package:flutter/material.dart';

class ListViewSeparated extends StatelessWidget {
  final List<String> fruits = [
    'Apel',
    'Jeruk',
    'Pisang',
    'Anggur',
    'Mangga',
    'Strawberry',
    'Apel',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: fruits.length,
      separatorBuilder: (context, index) => Divider(color: Colors.grey),
      itemBuilder: (context, index) {
        return ListTile(title: Text(fruits[index]));
      },
    );
  }
}
