import 'package:flutter/material.dart';
   import 'package:delivery_food/core/utils/app_colors.dart';

buildCheckOutButton() {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
          style: const ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(AppColors.secondColor)),
          onPressed: () {
            //TODO: Implement checkout functionality
          },
          child: const Text(
            'Check Out',
            style:
                TextStyle(color: AppColors.white, fontWeight: FontWeight.bold),
          )),
    );
  }