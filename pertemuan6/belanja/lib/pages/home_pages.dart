import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(name: 'Sepatu Nike', price: 1500000),
    Item(name: 'Tas Gucci', price: 2300000),
    Item(name: 'Topi Adidas', price: 500000),
    Item(name: 'Jaket Uniqlo', price: 900000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toko Belanja Tora'),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Card(
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/item',
                  arguments: item,
                );
              },
              child: ListTile(
                leading: const Icon(Icons.shopping_bag),
                title: Text(item.name),
                subtitle: Text('Rp ${item.price}'),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              ),
            ),
          );
        },
      ),
    );
  }
}
