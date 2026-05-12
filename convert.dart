import 'package:flutter/material.dart';
 
class Convert extends StatelessWidget {
  final Function konvertHandler;
 
  Convert({Key? key, required this.konvertHandler}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      margin: EdgeInsets.only(top: 16),
      child: ElevatedButton(
        onPressed: () => konvertHandler(),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
        ),
        child: Text("Konversi Suhu"),
      ),
    );
  }
}
 