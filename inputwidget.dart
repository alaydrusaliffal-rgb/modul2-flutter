import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Contoh TextField"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0), // Tambahkan padding supaya tidak nempel ke pinggir layar
          child: TextField(
            obscureText: false, // Set ke 'true' jika ingin membuat input password (teks jadi bintang-bintang)
            decoration: InputDecoration(
              border: OutlineInputBorder(), // Membuat garis tepi kotak
              labelText: 'Nama', // Teks label yang akan naik ke atas saat diklik
            ),
          ),
        ),
      ),
    );
  }
}