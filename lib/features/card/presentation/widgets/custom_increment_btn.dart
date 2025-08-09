import 'package:flutter/material.dart';
   import 'package:delivery_food/core/utils/app_colors.dart';

elevatedButton(void Function()? onTap, IconData? icon) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(left: 7, right: 7),
        width: 24,
        height: 24,
        decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(10)),
        child: Icon(
          icon,
          color: AppColors.black,
        ),
      ),
    );
  }