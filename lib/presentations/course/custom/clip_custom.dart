import 'dart:ui';

import 'package:flutter/material.dart';

class ChapterClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // Ukuran dari widget yang akan di-clip
    final width = size.width;
    final height = size.height;

    // Buat path baru
    final path = Path();

    // Mulai dari kiri atas
    path.moveTo(0, 0);

    // Gambar garis ke kanan atas
    path.lineTo(width, 0);

    // Gambar garis ke kanan bawah
    path.lineTo(width, height - 15);

    // Buat kurva di bagian bawah
    path.quadraticBezierTo(
        width / 2,
        height + 15, // titik kontrol di tengah bawah
        0,
        height - 15 // titik akhir di kiri bawah
        );

    // Tutup path dengan kembali ke awal
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
