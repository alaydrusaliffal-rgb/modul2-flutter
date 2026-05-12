import 'package:flutter/material.dart';
 
class Result extends StatelessWidget {
  final String nama;
  final String hasil;
 
  const Result({
    Key? key,
    required this.nama,
    required this.hasil,
  }) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          nama,
          style: TextStyle(fontSize: 18),
        ),
        Text(
          hasil,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
 