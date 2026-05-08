import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: MyLayout(),
      ),
    );
  }
}

class MyLayout extends StatelessWidget {
  const MyLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: ElevatedButton(
          child: const Text('Show alert'),
          onPressed: () {
            showAlertDialog(context);
          },
        ),
      ),
    );
  }
}

// Fungsi untuk menampilkan Alert
showAlertDialog(BuildContext context) {
  // 1. Siapkan tombol OK
  Widget okButton = TextButton(
    child: const Text("OK"),
    onPressed: () {
      Navigator.of(context).pop(); // Menutup dialog saat ditekan
    },
  );

  // 2. Siapkan AlertDialog-nya
  AlertDialog alert = AlertDialog(
    title: const Text("My title"),
    content: const Text("This is my message."),
    actions: [
      okButton,
    ],
  );

  // 3. Tampilkan ke layar
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}