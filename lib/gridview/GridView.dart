import 'package:flutter/material.dart';

class GridViewBasic extends StatelessWidget {
  GridViewBasic({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    final double widthScreen = mediaQuery.size.width;
    final double heightScreen = mediaQuery.size.height;

    return Scaffold(
      appBar: AppBar(title: Text('Grid Basic')),
      body: GridView.count(
        crossAxisCount: 2, // Mengatur jumlah kolom (misal: 2 kolom ke samping)
        crossAxisSpacing: 10, // Jarak antar kolom
        mainAxisSpacing: 10, // Jarak antar baris
        padding: EdgeInsets.all(10),
        reverse:
            false, // Mengatur arah scroll (false = ke bawah, true = ke atas)
        childAspectRatio:
            widthScreen /
            heightScreen *
            2, // Mengatur rasio aspek (lebar/tinggi) setiap item
        children: <Widget>[
          Container(
            color: const Color.fromARGB(255, 255, 0, 25),
            child: Center(
              child: Text('Kotak 1', style: TextStyle(fontSize: 18)),
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 255, 165, 0),
            child: Center(
              child: Text('Kotak 2', style: TextStyle(fontSize: 18)),
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 255, 255, 0),
            child: Center(
              child: Text('Kotak 3', style: TextStyle(fontSize: 18)),
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 0, 255, 0),
            child: Center(
              child: Text('Kotak 4', style: TextStyle(fontSize: 18)),
            ),
          ),
        ],
      ),
    );
  }
}
