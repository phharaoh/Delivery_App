import 'package:flutter/material.dart';
import 'package:delivery_food/core/utils/app_colors.dart';

class AddToCardBtn extends StatelessWidget {
  const AddToCardBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: const BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.all(Radius.circular(22)),
          ),
          child: const Padding(
            padding: EdgeInsetsDirectional.symmetric(
              horizontal: 15,
              vertical: 8,
            ),
            child: Text(
              ' Add to Cart',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black),
            ),
          ),
    );
  }
}
