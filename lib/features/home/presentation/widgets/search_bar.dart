import 'package:flutter/material.dart';
import 'package:groceries_app_ui/constants/app_colors.dart';


class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: AppColors.lightGrey,
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Row(
        children: [
          SizedBox(width: 15),

          Icon(
            Icons.search,
            size: 22,
            color: AppColors.black,
          ),

          SizedBox(width: 10),

          Text(
            'Search Store',
            style: TextStyle(
              color: AppColors.grey,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}