import 'package:flutter/material.dart';

class LatihanIdCard extends StatelessWidget {
  const LatihanIdCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 300,
        color: Colors.lightBlueAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(width: 100, height: 100, color: Colors.redAccent),
            Column(
              children: [
                Text('Nama: Raka Muhamad A.'),
                Text('Kelas: XII RPL 2'),
                Text('Nis: 123456789'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
