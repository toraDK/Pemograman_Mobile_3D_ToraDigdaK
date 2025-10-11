import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../models/item.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Laptop', price: 15000000, image: 'assets/images/laptop.png', stock: 10, rating: 4.8),
    Item(name: 'Headphone', price: 1200000, image: 'assets/images/headphone.jpg', stock: 25, rating: 4.6),
    Item(name: 'Smartphone', price: 8000000, image: 'assets/images/smartphone.jpg', stock: 15, rating: 4.9),
    Item(name: 'Keyboard', price: 600000, image: 'assets/images/keyboard.jpg', stock: 8, rating: 4.3),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toko Belanja - Tora Digda Kristiawan (2341720161)'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return InkWell(
            onTap: () {
              context.push('/item', extra: item); // ganti Navigator.pushNamed
            },
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              elevation: 4,
              child: Column(
                children: [
                  Hero(
                    tag: item.name,
                    child: Image.asset(item.image, height: 120, fit: BoxFit.cover),
                  ),
                  const SizedBox(height: 8),
                  Text(item.name, style: const TextStyle(fontWeight: FontWeight.bold)),
                  Text('Rp ${item.price}'),
                  Text('Stok: ${item.stock}'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.star, color: Colors.amber, size: 16),
                      Text('${item.rating}'),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          '© Tora Digda Kristiawan - 2341720161',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 12, color: Colors.grey),
        ),
      ),
    );
  }
}
