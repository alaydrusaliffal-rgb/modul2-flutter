import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Master Layout Gabungan"),
          backgroundColor: Colors.blueGrey,
        ),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            // 1. Bagian Header (Konsep Column + Text)
            const Text(
              "Selamat Datang di Belajar Flutter",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // 2. Bagian Gambar & Transform (Konsep BoxDecoration + Transform)
            Center(
              child: Transform.rotate(
                angle: -0.1,
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black, width: 5),
                    image: const DecorationImage(
                      image: NetworkImage('https://pixnio.com/free-images/2017/03/07/2017-03-07-10-59-39-900x600.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),

            // 3. Bagian Row (Konsep Row + FlutterLogo)
            const Text("Pilih Kategori:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildCategoryItem(Colors.purpleAccent, "Logo 1"),
                _buildCategoryItem(Colors.greenAccent, "Logo 2"),
                _buildCategoryItem(Colors.orangeAccent, "Logo 3"),
              ],
            ),
            const SizedBox(height: 30),

            // 4. Bagian Stack (Konsep Stack + Alignment)
            const Text("Widget Di Atas Widget:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            SizedBox(
              height: 150,
              child: Stack(
                children: [
                  Container(
                    color: Colors.green,
                    width: double.infinity,
                    height: 100,
                  ),
                  Positioned(
                    top: 20,
                    left: 50,
                    right: 50,
                    child: Container(
                      color: Colors.red,
                      height: 100,
                      alignment: Alignment.center,
                      child: const Text("Tumpang Tindih", style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ),

            // 5. Bagian Grid (Konsep GridView - dibatasi agar tidak scroll bentrok)
            const Text("Dashboard Grid:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true, // Penting agar GridView bisa masuk dalam ListView
              physics: const NeverScrollableScrollPhysics(), // Agar scroll-nya ikut ListView utama
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 2.0,
              children: [
                _buildGridItem(Colors.deepPurple, "Item 3"),
                _buildGridItem(Colors.blueGrey, "Item 4"),
                _buildGridItem(Colors.cyan[800]!, "Item 5"),
                _buildGridItem(Colors.yellow[800]!, "Item 6"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Helper function untuk merapikan kode Row
  Widget _buildCategoryItem(Color color, String label) {
    return Column(
      children: [
        Container(
          color: color,
          padding: const EdgeInsets.all(10),
          child: const FlutterLogo(size: 50),
        ),
        Text(label),
      ],
    );
  }

  // Helper function untuk merapikan kode Grid
  Widget _buildGridItem(Color color, String text) {
    return Container(
      color: color,
      alignment: Alignment.center,
      child: Text(text, style: const TextStyle(color: Colors.white, fontSize: 20)),
    );
  }
}