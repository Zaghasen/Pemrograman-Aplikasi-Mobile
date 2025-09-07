import 'package:flutter/material.dart';

class DataKelompokScreen extends StatelessWidget {
  const DataKelompokScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Kelompok'),
        backgroundColor: const Color(0xFFE44C9A),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text('Anggota Kelompok:', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Text('1. Erizal Rahmad Pramudhita (124230086)', style: TextStyle(fontSize: 18)),
              SizedBox(height: 10),
              Text('2. Zalfa Ghalib Hussein (124230097)', style: TextStyle(fontSize: 18)),
              SizedBox(height: 10),
              Text('3. Rahman Nabil Prambudi (124230110)', style: TextStyle(fontSize: 18)),
            ],
          ),
        ),
      ),
    );
  }
}