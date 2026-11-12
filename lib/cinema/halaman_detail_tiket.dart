import 'package:flutter/material.dart';
import 'halaman_struk.dart';

// =========================================================================
// 2. HALAMAN DETAIL FILM + PEMBAYARAN MANUAL CASH INPUT
// =========================================================================
class DetailFilmPage extends StatefulWidget {
  final Map<String, dynamic> film;
  const DetailFilmPage({super.key, required this.film});

  @override
  State<DetailFilmPage> createState() => _DetailFilmPageState();
}

class _DetailFilmPageState extends State<DetailFilmPage> {
  int jumlahTiket = 1;
  final TextEditingController cashController = TextEditingController();

  void _prosesPembayaran() {
    int totalHarga = widget.film['harga'] * jumlahTiket;
    int uangBayar = int.tryParse(cashController.text) ?? 0;

    if (uangBayar < totalHarga) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Uang pembayaran tunai kurang!'),
          backgroundColor: Colors.red,
        ),
      );

      return;
    }

    int kembalian = uangBayar - totalHarga;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => StrukPembayaranPage(
          film: widget.film,
          jumlahTiket: jumlahTiket,
          totalHarga: totalHarga,
          uangBayar: uangBayar,
          kembalian: kembalian,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    int totalHarga = widget.film['harga'] * jumlahTiket;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.film['judul']),
        backgroundColor: const Color(0xFF1F1D2B),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Banner Detail
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  widget.film['poster'],
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Chips Detail
            Row(
              children: [
                Chip(label: Text(widget.film['genre']), backgroundColor: const Color(0xFF6C5ECF)),
                const SizedBox(width: 8),
                Chip(label: Text(widget.film['usia']), backgroundColor: Colors.grey[800]),
                const SizedBox(width: 8),
                Chip(
                  avatar: const Icon(Icons.star, color: Colors.amber, size: 16),
                  label: Text('${widget.film['rating']}'),
                  backgroundColor: Colors.grey[800],
                ),
              ],
            ),
            const SizedBox(height: 12),

            const Text('Deskripsi', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            Text(widget.film['deskripsi'], style: const TextStyle(color: Colors.grey)),
            const SizedBox(height: 20),

            const Divider(color: Colors.grey),
            const SizedBox(height: 10),

            // Form Transaksi Pembayaran Manual
            const Text('Pembayaran Cash / Tunai', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Jumlah Tiket:'),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.remove_circle_outline),
                      onPressed: () {
                        if (jumlahTiket > 1) {
                          setState(() => jumlahTiket--);
                        }
                      },
                    ),
                    Text('$jumlahTiket', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    IconButton(
                      icon: const Icon(Icons.add_circle_outline),
                      onPressed: () {
                        setState(() => jumlahTiket++);
                      },
                    ),
                  ],
                )
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Total Tagihan:'),
                Text(
                  'Rp $totalHarga',
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.greenAccent),
                ),
              ],
            ),
            const SizedBox(height: 16),

            TextField(
              controller: cashController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Masukkan Uang Cash/Tunai (Rp)',
                prefixText: 'Rp ',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                filled: true,
                fillColor: const Color(0xFF252836),
              ),
            ),
            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF6C5ECF),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                onPressed: _prosesPembayaran,
                child: const Text('Bayar Sekarang', style: TextStyle(fontSize: 16, color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}