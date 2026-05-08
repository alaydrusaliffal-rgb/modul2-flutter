import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Floating Action Button Location')),
        body: const Center(child: Text('Tombol ada di tengah bawah!')),
        
        // Kode dari gambar kamu:
        floatingActionButton: FloatingActionButton(
          onPressed: () => 0, // Fungsi kosong sesuai gambar
          tooltip: 'Increment Counter',
          child: const Icon(Icons.add),
        ),
        
        // Ini yang membuat tombol pindah ke tengah
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        
        // Biasanya centerDocked dipasangkan dengan ini agar terlihat keren:
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          color: Colors.blue,
          child: Container(height: 50.0),
        ),
      ),
    );
  }
}