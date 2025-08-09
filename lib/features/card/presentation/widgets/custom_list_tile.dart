import 'package:flutter/material.dart';
import 'package:delivery_food/core/utils/app_colors.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.title,
    required this.trailingText,
  });
  final String title;
  final String trailingText;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        title,
        style: TextStyle(
          color: AppColors.txt2Color,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
      trailing: Text(
        '\$$trailingText',
        style: TextStyle(
          color: AppColors.txt2Color,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
