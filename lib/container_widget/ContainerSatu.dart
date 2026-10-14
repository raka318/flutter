import 'package:flutter/material.dart';

class ContainerLatihan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 300,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.lightGreen,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.green.shade900, width: 2),
        // image: DecorationImage(
        //   image: AssetImage("images/hanif.jpg"),
        //   fit: BoxFit.cover,
        // ),
      ),
      child: Text(
        "SMK ASSALAAM BANDUNG",
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
