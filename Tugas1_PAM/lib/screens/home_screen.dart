import 'package:flutter/material.dart';
import 'data_kelompok_screen.dart';
import 'kalkulator_screen.dart';
import 'ganjil_genap_screen.dart';
import 'jumlah_angka_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Utama'),
        backgroundColor: const Color(0xFFE44C9A),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(20),
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        children: <Widget>[
          _buildMenuCard(context, 'Data Kelompok', Icons.group, () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const DataKelompokScreen()));
          }),
          _buildMenuCard(context, 'Kalkulator', Icons.calculate, () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const KalkulatorScreen()));
          }),
          _buildMenuCard(context, 'Ganjil / Genap', Icons.filter_2, () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const GanjilGenapScreen()));
          }),
          _buildMenuCard(context, 'Jumlah Total Angka', Icons.format_list_numbered, () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const JumlahAngkaScreen()));
          }),
        ],
      ),
    );
  }

  Widget _buildMenuCard(BuildContext context, String title, IconData icon, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(icon, size: 50, color: const Color(0xFFE44C9A)),
            const SizedBox(height: 10),
            Text(title, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}