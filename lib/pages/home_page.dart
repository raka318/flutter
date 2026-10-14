import 'package:flutter/material.dart';
import 'package:rpl2/container_widget/ContainerLatihan.dart';
import 'package:rpl2/latihan_widget/LayoutInstagram.dart';
import 'package:rpl2/pages/about_page.dart';
import 'package:rpl2/listview/ListView.dart';
import 'package:rpl2/gridview/GridView.dart';
import 'package:rpl2/pages/formulir_page.dart';

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
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ContainerLatihan();
                  },
                ),
              );
            },
            child: Text('Pergi Container Latihan'),
          ),
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
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LayoutInstagram();
                  },
                ),
              );
            },
            child: Text('Pergi Layout Instagram'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return FormulirPage();
                  },
                ),
              );
            },
            child: Text('Pergi Formulir Page'),
          ),
        ],
      ),
    );
  }
}
