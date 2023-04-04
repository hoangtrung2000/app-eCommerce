import 'package:flutter/material.dart';

import '../models/product_model.dart';
import 'widgets.dart';

class ProductCarousel extends StatelessWidget {
  final List<Product> products;
  const ProductCarousel({
    required this.products,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 165,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 6.0),
                  child: ProductCard(
                    product: products[index],
                  ),
                );
              }),
        ));
  }
}
