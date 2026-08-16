import 'package:flutter/material.dart';
import 'package:groceries_app_ui/features/home/presentation/models/product_model.dart';
import 'product_card.dart';

class ProductHorizontalCard extends StatelessWidget {
  final List<ProductModel> products;

  const ProductHorizontalCard({
    super.key,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        separatorBuilder: (context, index) {
          return const SizedBox(width: 12);
        },
        itemBuilder: (context, index) {
          return ProductCard(
            product: products[index],
          );
        },
      ),
    );
  }
}