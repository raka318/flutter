import 'package:flutter/material.dart';

class LatihanHome extends StatelessWidget {
  const LatihanHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 500,
            height: 64,
            color: Colors.grey,
            child: const Center(
              child: Text(
                'Persib',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height: 150,
                color: Colors.grey,
                child: Center(
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Color.fromARGB(255, 128, 0, 0),
                    padding: const EdgeInsets.all(8),
                    child: const Center(
                      child: Text(
                        'Juara',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.grey,
                child: Center(
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Color.fromARGB(255, 128, 0, 0),
                    padding: const EdgeInsets.all(8),
                    child: const Center(
                      child: Text(
                        'Juara',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: 500,
            height: 100,
            color: Colors.grey,
            child: Center(
              child: Container(
                width: 470,
                height: 70,
                color: Color.fromARGB(255, 0, 0, 255),
                padding: const EdgeInsets.all(8),
                child: const Center(
                  child: Text(
                    'Juara',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: 500,
            height: 100,
            color: Colors.grey,
            child: Center(
              child: Container(
                width: 470,
                height: 70,
                color: Color.fromARGB(255, 0, 191, 255),
                padding: const EdgeInsets.all(8),
                child: const Center(
                  child: Text(
                    'Juara',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
