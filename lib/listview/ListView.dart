import 'package:flutter/material.dart';

class ListViewBasic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List View Basic')),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                ListTile(leading: Icon(Icons.map), title: Text('Map')),
                ListTile(leading: Icon(Icons.photo), title: Text('Album')),
                ListTile(leading: Icon(Icons.phone), title: Text('Phone')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
