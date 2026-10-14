import 'package:flutter/material.dart';

void main() {
  runApp(const TwitterWidget());
}

class TwitterWidget extends StatelessWidget {
  const TwitterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Background utama hitam sesuai gambar
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. BAGIAN HEADER & FOTO PROFIL (Menggunakan Stack & Container)
            Stack(
              clipBehavior:
                  Clip.none, // Agar foto profil bisa keluar dari batas Stack
              children: [
                // Banner / Sampul Atas
                Container(
                  height: 150,
                  width: double.infinity,
                  color: Colors.grey[850], // Warna background banner
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.radio_button_unchecked,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.search, color: Colors.white),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.more_vert, color: Colors.white),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),

                // Tombol Back di kiri atas
                Positioned(
                  top: 40,
                  left: 10,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {},
                  ),
                ),

                // Foto Profil yang menimpa banner (Stack + Positioned)
                Positioned(
                  bottom:
                      -45, // Membuat foto profil keluar melewati batas banner
                  left: 16,
                  child: Container(
                    padding: const EdgeInsets.all(
                      4,
                    ), // Border hitam melingkari foto profil
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                    child: const CircleAvatar(
                      radius: 42,
                      backgroundColor: Colors.grey,
                      // Kamu bisa ganti dengan AssetImage atau NetworkImage untuk foto aslimu
                      backgroundImage: AssetImage(
                        'assets/images/hanif.jpg', // Contoh gambar profil
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // Memberikan jarak karena foto profil menggunakan posisi 'bottom: -45'
            const SizedBox(height: 55),

            // 2. BAGIAN INFORMASI PROFIL (Menggunakan Column, Row, & SizedBox)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Nama Utama
                  const Text(
                    'anonim',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 2),

                  // Username
                  const Text(
                    '@anonim _',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  const SizedBox(height: 12),

                  // Lokasi
                  Row(
                    children: const [
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.grey,
                        size: 16,
                      ),
                      SizedBox(width: 6),
                      Text(
                        'Bandung, Jawa Barat',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),

                  // Website Link
                  Row(
                    children: const [
                      Icon(Icons.link, color: Colors.grey, size: 16),
                      SizedBox(width: 6),
                      Text(
                        'medium.com/@anonim...',
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),

                  // Tanggal Lahir dan Bergabung dalam satu Row
                  Row(
                    children: const [
                      Icon(Icons.cake_outlined, color: Colors.grey, size: 16),
                      SizedBox(width: 6),
                      Text(
                        'Born November 3, 2008',
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                      SizedBox(width: 16),
                      Icon(
                        Icons.calendar_month_outlined,
                        color: Colors.grey,
                        size: 16,
                      ),
                      SizedBox(width: 6),
                      Text(
                        'Joined November 2026',
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
