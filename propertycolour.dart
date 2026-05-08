import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Contoh Color")),
        body: Container(
          // Memberikan jarak 50 ke segala sisi luar kotak
          margin: const EdgeInsets.all(50),
          height: 200,
          width: 200,
          // Menempatkan teks tepat di tengah kotak
          alignment: Alignment.center,
          // Memberikan warna Amber gelap (skala 900)
          color: Colors.amber[900],
          child: const Text(
            'Semangat Belajar',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white, // Teks putih agar kontras dengan background
            ),
          ),
        ),
      ),
    );
  }
}