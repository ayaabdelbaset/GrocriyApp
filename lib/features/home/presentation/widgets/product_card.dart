import 'package:flutter/material.dart';
import 'package:groceries_app_ui/constants/app_colors.dart';
import 'package:groceries_app_ui/constants/app_text_styles.dart';
import 'package:groceries_app_ui/features/home/presentation/models/product_model.dart';


class ProductCard extends StatelessWidget {
  final ProductModel product;

  const ProductCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: AppColors.border,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: SizedBox(
              height: 90,
              child: Image.asset(
                product.image,
                fit: BoxFit.contain,
              ),
            ),
          ),

          const SizedBox(height: 10),

          Text(
            product.name,
            style: AppTextStyles.productName,
          ),

          const SizedBox(height: 4),

          Text(
            product.quantity,
            style: AppTextStyles.productSubtitle,
          ),

          const Spacer(),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                product.price,
                style: AppTextStyles.price,
              ),

              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 22,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}