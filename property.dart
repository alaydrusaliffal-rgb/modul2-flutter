import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Latihan Gabungan"),
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView( // Agar bisa di-scroll jika konten panjang
          child: Column(
            children: [
              // Dari Gambar 1: Text Widget
              const Padding(
                padding: EdgeInsets.all(20),
                child: Text('This is Text Widget', style: TextStyle(fontSize: 18)),
              ),

              // Dari Gambar 2: Image Widget
              Image.network(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                height: 200,
              ),

              const SizedBox(height: 20),

              // Dari Gambar 3: ElevatedButton
              // Note: Properti 'color' & 'textColor' di ElevatedButton sekarang
              // menggunakan styleFrom untuk versi Flutter terbaru.
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[900], // Warna tombol
                  foregroundColor: Colors.white,   // Warna teks
                ),
                onPressed: () {
                  print("Tombol ditekan!");
                },
                child: const Text(
                  "Button",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}