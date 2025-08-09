import 'package:flutter/material.dart';
import 'package:delivery_food/core/utils/app_colors.dart';

class CustomCheckOutBtn extends StatelessWidget {
  const CustomCheckOutBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 48,
      child: ElevatedButton(
        style: const ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(AppColors.secondColor),
        ),
        onPressed: () {
          //TODO: Implement checkout functionality
        },
        child: const Text(
          'Check Out',
          style: TextStyle(color: AppColors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
