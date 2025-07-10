import 'package:fashion_app/features/home/domain/entity/product_entity.dart';
import 'package:flutter/material.dart';

class ProductDetailsView extends StatelessWidget {
  final ProductEntity product;

  const ProductDetailsView({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                product.thumbnail,
                height: 200,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              product.title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'Category: ${product.category}',
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 8),
            Text(
              '\$${product.price}',
              style: const TextStyle(fontSize: 18, color: Colors.green),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                const Icon(Icons.star, color: Colors.amber),
                const SizedBox(width: 4),
                Text('${product.rating}'),
              ],
            ),
            const SizedBox(height: 16),
            // الوصف
            Text(
              product.description,
              style: const TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
