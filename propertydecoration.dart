import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Contoh Configuration")),
        body: Container(
          decoration: BoxDecoration(
            // Custom Hex Color (A shade of green/teal)
            color: const Color(0xfff7c94b6),
            image: const DecorationImage(
              image: NetworkImage(
                  'https://pixnio.com/free-images/2018/12/02/2018-12-02-19-17-12.jpg'),
              fit: BoxFit.fitWidth,
            ),
            border: Border.all(
              color: Colors.black,
              width: 8,
            ),
            // Rounds the corners of the container
            borderRadius: BorderRadius.circular(12),
          ),
          height: 200,
          width: 300,
          margin: const EdgeInsets.all(20),
        ),
      ),
    );
  }
}