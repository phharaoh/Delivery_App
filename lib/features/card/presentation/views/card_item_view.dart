import 'package:flutter/material.dart';
import 'package:delivery_food/core/utils/app_colors.dart';
import 'package:delivery_food/features/card/presentation/widgets/custom_btn.dart';
import 'package:delivery_food/features/card/presentation/widgets/custom_list_tile.dart';

class CardItemView extends StatelessWidget {
  const CardItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Card',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            CustomListTile(title: 'Subtotal', trailingText: '20.00'),
            CustomListTile(title: 'Delivery Fee', trailingText: '5.00'),
            CustomListTile(title: 'Taxes', trailingText: '10.00'),
            CustomListTile(title: 'Total', trailingText: '35.00'),
            Spacer(),
            CustomCheckOutBtn(),
          ],
        ),
      ),
    );
  }
}
