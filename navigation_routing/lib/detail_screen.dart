import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final int itemIndex;

  DetailScreen({required this.itemIndex});

  @override
  Widget build(BuildContext context) {
    String content = getContent(itemIndex);
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Detail Item '),
            SizedBox(width: 5),
            Text(
              '$itemIndex',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                content,
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String getContent(int index) {
    switch (index) {
      case 1:
        return 'Render (RNDR)Render Network adalah platform rendering terdesentralisasi yang dirancang untuk mengatasi tuntutan akan kekuatan komputasi GPU dalam produksi media generasi mendatang. .';
      case 2:
        return 'MATIC (MATIC) token aslinya Polygon, adalah token ERC-20 yang berjalan di blockchain Ethereum. Token ini digunakan untuk layanan pembayaran di Polygon dan sebagai mata uang penyelesaian antara pengguna yang beroperasi di dalam ekosistem Polygon..';
      case 3:
        return 'Manta (MANTA) Manta Network (MANTA), ekosistem multi-modular yang berfokus pada privasi untuk aplikasi tanpa pengetahuan (ZK) , muncul sebagai pesaing kuat di dunia mata uang digital. Dengan fokusnya pada privasi, skalabilitas, dan transaksi yang aman, mata uang kripto terus mengumpulkan momentum..';
      case 4:
        return 'Hedera (HBAR) HBAR adalah token asli Hedera, yang digunakan untuk membiayai transaksi dan melindungi jaringan melalui mekanisme staking. Hedera menonjol karena pendekatannya yang tergovernansi dengan anggota dari berbagai perusahaan besar dan terkenal di seluruh dunia.';
      case 5:
        return 'Cardano (ADA) is a proof-of-stake blockchain platform.';
      default:
        return 'Detail for item $index'; // Default case
    }
  }
}