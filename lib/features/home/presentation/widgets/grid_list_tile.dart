import 'package:flutter/material.dart';
   import 'package:delivery_food/core/utils/app_colors.dart';

buildGridTile() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/images/pro.png',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          const SizedBox(height: 8),
          const Text('Burger Combo', style: TextStyle(fontSize: 13)),
          const Text(
            'Burger Combo with fries',
            style: TextStyle(color: AppColors.txtColor, fontSize: 10),
          ),
        ],
      ),
    );
  }