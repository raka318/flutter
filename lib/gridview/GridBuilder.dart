import 'package:flutter/material.dart';

class GridViewBuilderExample extends StatelessWidget {
  const GridViewBuilderExample({super.key});

  final List<Map<String, String>> products = const [
    {
      'name': 'Nasi Goreng',
      'Price': 'Rp 15.000',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSV0voiGc4bvZOwZYSR-lB5ld3DcgJahBj3zeOqu5C2tw&s=10',
    },
    {
      'name': 'Nasi Padang',
      'Price': 'Rp 20.000',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvKNBjp8VB7gnb4vRFGdDONVlpk-OGwqjdA7COqzL32Q&s=10',
    },
    {
      'name': 'Mie Goreng',
      'Price': 'Rp 12.000',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRL5c3RVUqpANPIPKAxI9q29e_GKc5lm8p-K6thEMXSbQ&s=10',
    },
    {
      'name': 'Nasi Ayam',
      'Price': 'Rp 18.000',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQhpDHbLysVlaE4NVWpNDeeAVsUTpQNwo6KO6EDjqZAw&s=10',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Grid Builder')),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, // Jumlah kolom
            crossAxisSpacing: 10, // Jarak antar kolom
            mainAxisSpacing: 10, // Jarak antar baris
            childAspectRatio: 0.8, // Rasio aspek (lebar/tinggi) setiap item
          ),
          itemBuilder: (context, index) {
            final product = products[index];
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[100],
                boxShadow: const [
                  BoxShadow(color: Colors.black12, blurRadius: 6),
                ],
              ),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        product['image']!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black,
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    right: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product['name']!,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          product['Price']!,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
