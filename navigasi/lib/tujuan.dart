import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TujuanPage extends StatelessWidget {
  const TujuanPage({super.key});

  @override
  Widget build(BuildContext context) {
    const Color backgroundColor = Color(0xFFFF4630);

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
                  'Ini Halaman Tujuan',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 28),

                // TEKS ATAS
                const Text(
                  'Untuk berpindah ke halaman baru, gunakan metode '
                      'Navigator.push(). Metode push() akan menambahkan '
                      'Route ke dalam tumpukan Route yang dikelola oleh '
                      'Navigator. Route ini dapat dibuat secara kustom atau '
                      'menggunakan MaterialPageRoute, yang memiliki '
                      'animasi transisi sesuai dengan platform yang '
                      'digunakan.',
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
                      'assets/island.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                // JARAK ICON KE TEKS BAWAH
                const SizedBox(height: 50),

                // TEKS BAWAH
                const Text(
                  'Untuk menutup halaman kedua dan kembali ke halaman '
                      'pertama, gunakan metode Navigator.pop(). Metode pop() '
                      'akan menghapus Route saat ini dari tumpukan Route '
                      'yang dikelola oleh Navigator.',
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
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF0B8DCC),
                      foregroundColor: Colors.white,
                      elevation: 0,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 13,
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
                          '‹',
                          style: TextStyle(
                            fontSize: 22,
                            height: 0.7,
                          ),
                        ),
                        SizedBox(width: 4),
                        Text(
                          'Kembali ke home',
                          style: TextStyle(
                            fontSize: 13,
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