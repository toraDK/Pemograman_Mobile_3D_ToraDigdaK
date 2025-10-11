import 'package:flutter/material.dart';
import '../models/item.dart';

class ItemPage extends StatelessWidget {
  final Item item;
  const ItemPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Hero(
            tag: item.name,
            child: Image.asset(item.image, width: double.infinity, height: 250, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.name, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                Text('Harga: Rp ${item.price}', style: const TextStyle(fontSize: 18)),
                Text('Stok: ${item.stock}'),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber),
                    Text('${item.rating}'),
                  ],
                ),
                const SizedBox(height: 10),
                const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla accumsan, metus ultrices eleifend gravida, nulla nunc varius lectus, nec rutrum justo nibh eu lectus. Ut vulputate semper dui. Fusce erat odio, sollicitudin vel erat vel, interdum mattis neque.'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
