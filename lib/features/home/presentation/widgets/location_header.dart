import 'package:flutter/material.dart';
import 'package:groceries_app_ui/constants/app_colors.dart';


class LocationWidget extends StatelessWidget {
  const LocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.location_on,
          size: 18,
          color: AppColors.black,
        ),
        const SizedBox(width: 4),
        const Text(
          'Dhaka, Banassre',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColors.black,
          ),
        ),
      ],
    );
  }
}