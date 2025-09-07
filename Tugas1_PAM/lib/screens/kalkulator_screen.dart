import 'package:flutter/material.dart';

class KalkulatorScreen extends StatefulWidget {
  const KalkulatorScreen({super.key});

  @override
  State<KalkulatorScreen> createState() => _KalkulatorScreenState();
}

class _KalkulatorScreenState extends State<KalkulatorScreen> {
  final _angka1Controller = TextEditingController();
  final _angka2Controller = TextEditingController();
  String _hasil = '0';

  void _hitung(String operasi) {
    final double? angka1 = double.tryParse(_angka1Controller.text);
    final double? angka2 = double.tryParse(_angka2Controller.text);
    double hasilHitung = 0;

    if (angka1 == null || angka2 == null) {
      setState(() {
        _hasil = 'Input tidak valid!';
      });
      return;
    }

    switch (operasi) {
      case '+':
        hasilHitung = angka1 + angka2;
        break;
      case '-':
        hasilHitung = angka1 - angka2;
        break;
      case '*':
        hasilHitung = angka1 * angka2;
        break;
      case '/':
        if (angka2 == 0) {
          setState(() {
            _hasil = 'Tidak bisa dibagi nol!';
          });
          return;
        }
        hasilHitung = angka1 / angka2;
        break;
    }

    setState(() {
      _hasil = hasilHitung.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kalkulator'),
        backgroundColor: const Color(0xFFE44C9A),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _angka1Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Angka Pertama'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _angka2Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Angka Kedua'),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(onPressed: () => _hitung('+'), child: const Text('+')),
                ElevatedButton(onPressed: () => _hitung('-'), child: const Text('-')),
                ElevatedButton(onPressed: () => _hitung('*'), child: const Text('x')),
                ElevatedButton(onPressed: () => _hitung('/'), child: const Text('/')),
              ],
            ),
            const SizedBox(height: 20),
            Text('Hasil: $_hasil', style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}