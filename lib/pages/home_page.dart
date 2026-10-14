import 'package:flutter/material.dart';
import 'package:rpl2/pages/about_page.dart';
import 'package:rpl2/listview/ListView.dart';
import 'package:rpl2/gridview/GridView.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Halaman Home'),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return AboutPage();
                  },
                ),
              );
            },
            child: Text('Pergi KeAbout'),
          ),
          // ElevatedButton(
          //   onPressed: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) {
          //           return ListViewBasic();
          //         },
          //       ),
          //     );
          //   },
          //   child: Text('Pergi ListViewBasic'),
          // ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ListViewBasic();
                  },
                ),
              );
            },
            child: Text('Pergi List View Basic'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return GridViewBasic();
                  },
                ),
              );
            },
            child: Text('Pergi Grid View Basic'),
          ),
        ],
      ),
    );
  }
}
