import 'package:flutter/material.dart';

class GanjilGenapScreen extends StatefulWidget {
  const GanjilGenapScreen({super.key});

  @override
  State<GanjilGenapScreen> createState() => _GanjilGenapScreenState();
}

class _GanjilGenapScreenState extends State<GanjilGenapScreen> {
  final _controller = TextEditingController();
  String _hasil = '';

  void _cekBilangan() {
    final int? angka = int.tryParse(_controller.text);
    if (angka == null) {
      setState(() {
        _hasil = 'Input harus berupa angka!';
      });
      return;
    }

    setState(() {
      _hasil = angka % 2 == 0 ? 'Genap' : 'Ganjil';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ganjil / Genap'),
        backgroundColor: const Color(0xFFE44C9A),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Masukkan Bilangan'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _cekBilangan,
              child: const Text('Cek'),
            ),
            const SizedBox(height: 20),
            if (_hasil.isNotEmpty)
              Text('Hasil: Bilangan ini adalah $_hasil', style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}