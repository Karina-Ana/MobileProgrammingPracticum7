import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const Color backgroundColor = Color(0xFF0B8DCC);

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: backgroundColor,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.black,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // JUDUL
                const Text(
                  'Ini Halaman Home',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 28),

                // TEKS ATAS
                const Text(
                  'Banyak aplikasi memiliki beberapa layar untuk menampilkan '
                      'informasi yang berbeda. Contohnya, ada layar produk, dan '
                      'ketika pengguna mengklik produk, akan muncul layar dengan '
                      'detail produk tersebut.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    height: 1.3,
                  ),
                ),

                // JARAK TEKS ATAS KE ICON
                const SizedBox(height: 50),

                // KOTAK PUTIH + ICON
                Center(
                  child: Container(
                    width: 190,
                    height: 190,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Image.asset(
                      'assets/house.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                // JARAK ICON KE TEKS BAWAH
                const SizedBox(height: 50),

                // TEKS BAWAH
                const Text(
                  'Pertama, kita perlu membuat dua halaman atau "routes" '
                      'yang ingin kita tampilkan. Selanjutnya, kita gunakan '
                      'perintah Navigator.push() untuk berpindah dari halaman '
                      'pertama ke halaman kedua. Ini seperti kita membuka '
                      'halaman baru. Terakhir, kita bisa kembali dari halaman '
                      'kedua ke halaman pertama menggunakan Navigator.pop(). '
                      'Seperti menutup halaman kedua dan kembali ke halaman '
                      'pertama.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    height: 1.3,
                  ),
                ),

                const Spacer(),

                // TOMBOL
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/tujuan');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFF4A35),
                      foregroundColor: Colors.white,
                      elevation: 0,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 10,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Ke halaman tujuan',
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                        SizedBox(width: 4),
                        Text(
                          '›',
                          style: TextStyle(
                            fontSize: 22,
                            height: 0.7,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}