import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // Menambahkan AppBar supaya tampilan tidak kosong
        appBar: AppBar(
          title: const Text('Latihan FloatingActionButton'),
          backgroundColor: Colors.pink,
        ),
        body: const Center(
          child: Text('Tekan tombol di pojok kanan bawah!'),
        ),
        // Kode utama dari gambar kamu:
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Kode di sini akan dijalankan saat tombol ditekan
            print('Tombol Like ditekan!');
          },
          backgroundColor: Colors.pink,
          child: const Icon(Icons.thumb_up),
        ),
      ),
    );
  }
}