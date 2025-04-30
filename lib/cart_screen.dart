import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key, required this.jumlah});

  final int jumlah;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart Screen'),
      ),
      body: Center(
        child: Text(
          'Jumlah Barang: $jumlah',
          
        ),
      ),
    );
  }
}
