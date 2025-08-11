import 'package:flutter/material.dart';
import 'package:delivery_food/core/utils/app_colors.dart';
import 'package:delivery_food/features/home/data/model/item_model.dart';

buildGridView() {
  return GridView.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      childAspectRatio: 3 / 2,
    ),
    itemCount: foodItems.length,
    itemBuilder: (context, index) {
      final item = foodItems[index];
      return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  item.image,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(item.title, style: TextStyle(fontSize: 13)),
            Text(
              item.subtitle,
              style: TextStyle(color: AppColors.txtColor, fontSize: 10),
            ),
          ],
        ),
      );
    },
  );
}
