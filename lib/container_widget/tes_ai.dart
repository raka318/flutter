import 'package:flutter/material.dart';

// Halaman Formulir Utama
class TesAi extends StatefulWidget {
  const TesAi({super.key});

  @override
  State<TesAi> createState() => _FormScreenState();
}

class _FormScreenState extends State<TesAi> {
  // GlobalKey untuk validasi Form
  final _formKey = GlobalKey<FormState>();

  // Controller untuk menangkap input teks
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();

  @override
  void dispose() {
    // Wajib dispose controller untuk mencegah memory leak
    _nameController.dispose();
    _dateController.dispose();
    super.dispose();
  }

  // Fungsi untuk menampilkan DatePicker
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        // Format tanggal sederhana: YYYY-MM-DD
        _dateController.text = "${picked.toLocal()}".split(' ')[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Formulir Pendaftaran')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              // Input Nama (Menggunakan Controller)
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Nama Lengkap',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nama tidak boleh kosong';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              // Input Tanggal Lahir (Menggunakan DatePicker & Controller)
              TextFormField(
                controller: _dateController,
                readOnly: true, // Agar keyboard tidak muncul saat diklik
                decoration: const InputDecoration(
                  labelText: 'Tanggal Lahir',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.calendar_today),
                ),
                onTap: () {
                  _selectDate(context); // Panggil DatePicker saat field ditekan
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Tanggal lahir harus dipilih';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),

              // Tombol Submit & Passing Data
              ElevatedButton(
                onPressed: () {
                  // Validasi form
                  if (_formKey.currentState!.validate()) {
                    // Ambil data dari controller
                    String nama = _nameController.text;
                    String tanggalLahir = _dateController.text;

                    // Passing data ke Halaman Hasil (ResultScreen)
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ResultScreen(name: nama, birthDate: tanggalLahir),
                      ),
                    );
                  }
                },
                child: const Text('Kirim Data'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Halaman Tujuan untuk Menerima Passing Data
class ResultScreen extends StatelessWidget {
  final String name;
  final String birthDate;

  const ResultScreen({super.key, required this.name, required this.birthDate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Data Diterima')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Data Berhasil Dikirim:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text('Nama: $name', style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            Text(
              'Tanggal Lahir: $birthDate',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Kembali ke halaman formulir
              },
              child: const Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}
