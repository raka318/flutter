import 'package:flutter/material.dart';

final List<Map<String, dynamic>> filmList = [
  {
    'judul': 'KKN di Desa Penari',
    'harga': 50000,
    'rating': 6.3,
    'genre': 'Horor',
    'usia': '17+',
    'deskripsi':
        'Lima mahasiswa yang harus melaksanakan KKN di sebuah desa terpencil diperingatkan untuk tidak melewati batas...',
    'poster': 'https://picsum.photos/id/10/400/600',
    'pemeran': ['Tissa Biani', 'Adinda Thomas', 'Achmad Megantara']
  },
  {
    'judul': 'Ngeri Ngeri Sedap',
    'harga': 45000,
    'rating': 8.5,
    'genre': 'Komedi',
    'usia': '13+',
    'deskripsi':
        'Pak Domu dan Mak Domu berpura-pura bertengkar dan ingin bercerai demi mendapatkan perhatian dari anak-anaknya.',
    'poster': 'https://picsum.photos/id/20/400/600',
    'pemeran': ['Arswendy Bening', 'Tika Panggabean', 'Boris Bokir']
  },
  {
    'judul': 'Pengabdi Setan 2',
    'harga': 50000,
    'rating': 7.0,
    'genre': 'Horor',
    'usia': '17+',
    'deskripsi':
        'Beberapa tahun setelah berhasil menyelamatkan diri dari kejadian mengerikan yang membuat mereka kehilangan ibu...',
    'poster': 'https://picsum.photos/id/30/400/600',
    'pemeran': ['Tara Basro', 'Endy Arfian', 'Bront Palarae']
  },
  {
    'judul': 'Miracle in Cell No. 7',
    'harga': 40000,
    'rating': 8.8,
    'genre': 'Drama',
    'usia': 'SU',
    'deskripsi':
        'Dodo Rozak, seorang ayah dengan keterbelakangan mental yang sangat mencintai putrinya, dituduh melakukan kejahatan.',
    'poster': 'https://picsum.photos/id/40/400/600',
    'pemeran': ['Vino G. Bastian', 'Graciella Abigail', 'Indro Warkop']
  },
  {
    'judul': 'Mencuri Raden Saleh',
    'harga': 55000,
    'rating': 8.2,
    'genre': 'Aksi',
    'usia': '13+',
    'deskripsi':
        'Sekelompok anak muda berencana mencuri lukisan bersejarah karya Raden Saleh yang dijaga ketat di Istana Negara.',
    'poster': 'https://picsum.photos/id/50/400/600',
    'pemeran': ['Iqbaal Ramadhan', 'Angga Yunanda', 'A Rachel Amanda']
  },
  {
    'judul': 'Sewu Dino',
    'harga': 45000,
    'rating': 6.8,
    'genre': 'Horor',
    'usia': '17+',
    'deskripsi':
        'Sri diterima bekerja untuk keluarga Atmojo dengan bayaran tinggi karena lahir di hari Jumat Kliwon...',
    'poster': 'https://picsum.photos/id/60/400/600',
    'pemeran': ['Mikha Tambayong', 'Givina Lukita', 'Rio Dewanto']
  },
  {
    'judul': 'Avatar: The Way of Water',
    'harga': 60000,
    'rating': 7.6,
    'genre': 'Sci-Fi',
    'usia': '13+',
    'deskripsi':
        'Jake Sully lives with his newfound family formed on the extrasolar moon Pandora.',
    'poster': 'https://picsum.photos/id/70/400/600',
    'pemeran': ['Sam Worthington', 'Zoe Saldana', 'Sigourney Weaver']
  },
  {
    'judul': 'Oppenheimer',
    'harga': 60000,
    'rating': 8.9,
    'genre': 'Biografi',
    'usia': '17+',
    'deskripsi':
        'Kisah ilmuwan Amerika J. Robert Oppenheimer dan perannya dalam pengembangan bom atom.',
    'poster': 'https://picsum.photos/id/80/400/600',
    'pemeran': ['Cillian Murphy', 'Emily Blunt', 'Matt Damon']
  },
  {
    'judul': 'Spider-Man: Across the Spider-Verse',
    'harga': 50000,
    'rating': 8.7,
    'genre': 'Animasi',
    'usia': 'SU',
    'deskripsi':
        'Miles Morales terlempar ke multiverse di mana ia bertemu dengan tim Spider-People yang bertugas melindungi keberadaannya.',
    'poster': 'https://picsum.photos/id/90/400/600',
    'pemeran': ['Shameik Moore', 'Hailee Steinfeld', 'Oscar Isaac']
  },
  {
    'judul': 'Fast X',
    'harga': 50000,
    'rating': 6.0,
    'genre': 'Aksi',
    'usia': '13+',
    'deskripsi':
        'Dom Toretto dan keluarganya menjadi sasaran dendam putra gembong narkoba Hernan Reyes.',
    'poster': 'https://picsum.photos/id/100/400/600',
    'pemeran': ['Vin Diesel', 'Jason Momoa', 'Michelle Rodriguez']
  },
];