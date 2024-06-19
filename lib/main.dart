import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kotak Warna dengan Teks'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildColorBox(Colors.red, 100, 100, 'Kotak Merah'),
              _buildColorBox(Colors.green, 150, 100, 'Kotak Hijau'),
              _buildColorBox(Colors.blue, 100, 150, 'Kotak Biru'),
              _buildColorBox(Colors.yellow, 200, 100, 'Kotak Kuning'),
              _buildColorBox(Colors.purple, 100, 200, 'Kotak Ungu'),
              _buildColorBox(Colors.orange, 150, 150, 'Kotak Oranye'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildColorBox(Color color, double width, double height, String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: width,
            height: height,
            color: color,
          ),
          SizedBox(height: 8),
          Text(
            text,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}