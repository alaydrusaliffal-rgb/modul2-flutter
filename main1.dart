import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'input.dart';
import 'result.dart';
import 'convert.dart';
 
void main() {
  runApp(MyApp());
}
 
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
 
class _MyAppState extends State<MyApp> {
  // text controller
  final TextEditingController etInput = TextEditingController();
 
  // variabel berubah (state)
  double _inputUser = 0;
  double _kelvin = 0;
  double _reamur = 0;
  double _fahrenheit = 0;
 
  // fungsi event konversi suhu
  void _konversiSuhu() {
    setState(() {
      _inputUser = double.parse(etInput.text);
      _kelvin = _inputUser + 273.15;
      _reamur = _inputUser * 4 / 5;
      _fahrenheit = (_inputUser * 9 / 5) + 32;
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Konverter Suhu"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            children: [
              // Widget Input
              Input(etInput: etInput),
 
              // Widget Result - Kelvin
              Result(
                nama: "Kelvin",
                hasil: _kelvin.toStringAsFixed(2),
              ),
 
              // Widget Result - Reamur
              Result(
                nama: "Reamur",
                hasil: _reamur.toStringAsFixed(2),
              ),
 
              // Widget Result - Fahrenheit
              Result(
                nama: "Fahrenheit",
                hasil: _fahrenheit.toStringAsFixed(2),
              ),
 
              // Widget Convert (Button)
              Convert(konvertHandler: _konversiSuhu),
            ],
          ),
        ),
      ),
    );
  }
}