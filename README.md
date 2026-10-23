# Navigasi Antar Halaman – Flutter

## 📝 Deskripsi Singkat

Aplikasi sederhana berbasis Flutter yang menerapkan navigasi antar halaman menggunakan `MaterialPageRoute` dan `Named Route`. Aplikasi terdiri dari Halaman Utama dan Halaman Tujuan yang memungkinkan pengguna berpindah halaman melalui tombol navigasi dan kembali ke halaman sebelumnya.

## ✨ Fitur Utama

- **Halaman Utama:** Menampilkan teks pengenalan dan tombol untuk menuju Halaman Tujuan.
- **Halaman Tujuan:** Menampilkan teks keterangan dan tombol untuk kembali ke Halaman Utama.
- **MaterialPageRoute:** Membuka halaman baru secara langsung tanpa mendaftarkan nama route terlebih dahulu.
- **Named Route:** Mengelola navigasi melalui nama route yang didaftarkan pada `MaterialApp`.
- **Navigasi Kembali:** Menggunakan `Navigator.pop()` untuk menutup halaman aktif dan kembali ke halaman sebelumnya.

## 🛠️ Teknologi yang Digunakan

- Flutter
- Dart
- Material Design
- Widget `MaterialApp`, `Scaffold`, `AppBar`, dan `ElevatedButton`

## 📂 Struktur Proyek

```text
project_name/
├── lib/
│   ├── main.dart
│   ├── home.dart
│   └── tujuan.dart
└── pubspec.yaml
```

- `main.dart`: Mengatur aplikasi dan menentukan halaman awal atau daftar route.
- `home.dart`: Berisi tampilan Halaman Utama dan tombol menuju Halaman Tujuan.
- `tujuan.dart`: Berisi tampilan Halaman Tujuan dan tombol kembali.

## 🔄 Cara Kerja Navigasi

### 1. MaterialPageRoute

Navigasi dilakukan dengan membuat route secara langsung ketika tombol ditekan.

```dart
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => const Tujuan(),
  ),
);
```

Metode ini cocok untuk navigasi sederhana karena halaman tujuan ditentukan langsung di dalam kode tombol.

### 2. Named Route

Setiap halaman didaftarkan menggunakan nama tertentu pada `MaterialApp`.

```dart
MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => const HomePage(),
    '/tujuan': (context) => const TujuanPage(),
  },
);
```

Untuk membuka Halaman Tujuan, gunakan:

```dart
Navigator.pushNamed(context, '/tujuan');
```

Metode ini membantu mengatur navigasi secara terstruktur, terutama ketika aplikasi memiliki banyak halaman.

### 3. Kembali ke Halaman Sebelumnya

Kedua metode dapat menggunakan `Navigator.pop(context)` untuk menutup halaman yang sedang ditampilkan dan kembali ke halaman sebelumnya.

## 🚀 Cara Menjalankan

1. Buat atau buka proyek Flutter melalui Android Studio atau VS Code.
2. Buat file `main.dart`, `home.dart`, dan `tujuan.dart` di dalam folder `lib/`.
3. Masukkan kode navigasi sesuai metode yang ingin digunakan.
4. Pastikan seluruh file diimpor dan nama class sesuai dengan pemanggilannya.
5. Jalankan aplikasi menggunakan tombol **Run** atau perintah:

   ```bash
   flutter run
   ```

6. Tekan tombol pada Halaman Utama untuk membuka Halaman Tujuan, kemudian tekan tombol kembali untuk kembali ke halaman sebelumnya.

## 🎯 Kesimpulan

`MaterialPageRoute` dan `Named Route` merupakan dua metode navigasi yang dapat digunakan untuk berpindah antar halaman di Flutter. `MaterialPageRoute` memanggil halaman secara langsung, sedangkan `Named Route` menggunakan nama route yang telah didaftarkan. Keduanya memanfaatkan `Navigator.push()` atau `Navigator.pushNamed()` untuk membuka halaman dan `Navigator.pop()` untuk kembali ke halaman sebelumnya.
