import 'package:flutter/material.dart';

class JumlahAngkaScreen extends StatefulWidget {
  const JumlahAngkaScreen({super.key});

  @override
  State<JumlahAngkaScreen> createState() => _JumlahAngkaScreenState();
}

class _JumlahAngkaScreenState extends State<JumlahAngkaScreen> {
  final _controller = TextEditingController();
  String _hasil = '0';

  void _hitungTotal() {
    String input = _controller.text;
    int total = 0;
    for (int i = 0; i < input.length; i++) {
      int? digit = int.tryParse(input[i]);
      if (digit != null) {
        total += digit;
      }
    }
    setState(() {
      _hasil = total.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jumlah Total Angka'),
        backgroundColor: const Color(0xFFE44C9A),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _controller,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(labelText: 'Masukkan Kumpulan Angka (contoh: 12345)'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _hitungTotal,
              child: const Text('Hitung Total'),
            ),
            const SizedBox(height: 20),
            Text('Jumlah Total Angka: $_hasil', style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}