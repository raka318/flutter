import 'package:flutter/material.dart';

class StrukPembayaranPage extends StatelessWidget {
  final Map<String, dynamic> film;
  final int jumlahTiket;
  final int totalHarga;
  final int uangBayar;
  final int kembalian;

  const StrukPembayaranPage({
    super.key,
    required this.film,
    required this.jumlahTiket,
    required this.totalHarga,
    required this.uangBayar,
    required this.kembalian,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Struk Pembayaran'),
        backgroundColor: const Color(0xFF1F1D2B),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Icon(Icons.check_circle, color: Colors.green, size: 60),
                ),
                const SizedBox(height: 8),
                const Center(
                  child: Text(
                    'TRANSAKSI BERHASIL',
                    style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                const Divider(height: 30, color: Colors.black),
                _buildRow('Judul Film', film['judul']),
                _buildRow('Harga Tiket', 'Rp ${film['harga']}'),
                _buildRow('Jumlah Tiket', '$jumlahTiket'),
                const Divider(color: Colors.grey),
                _buildRow('Total Harga', 'Rp $totalHarga', isBold: true),
                _buildRow('Uang Bayar', 'Rp $uangBayar'),
                _buildRow('Kembalian', 'Rp $kembalian', isBold: true),
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF6C5ECF),
                    ),
                    onPressed: () {
                      Navigator.popUntil(context, (route) => route.isFirst);
                    },
                    child: const Text('Kembali ke Beranda', style: TextStyle(color: Colors.white)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRow(String title, String value, {bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(color: Colors.black54)),
          Text(
            value,
            style: TextStyle(
              color: Colors.black,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}