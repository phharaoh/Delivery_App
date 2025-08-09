import 'package:flutter/material.dart';
import 'package:delivery_food/core/utils/app_colors.dart';

builderFormField() {
  return TextFormField(
    decoration: const InputDecoration(
      filled: true,
      fillColor: AppColors.primaryColor,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide.none,
      ),
      hintText: 'Search for food',
      hintStyle: TextStyle(color: AppColors.txtColor),
      prefixIcon: Icon(Icons.search, color: AppColors.txtColor),
      focusedErrorBorder: InputBorder.none,
    ),
  );
}
