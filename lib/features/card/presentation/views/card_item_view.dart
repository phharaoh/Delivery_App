import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:delivery_food/features/card/presentation/widgets/custom_btn.dart';
import 'package:delivery_food/features/card/presentation/widgets/item_list_tile.dart';
import 'package:delivery_food/features/card/presentation/manager/card_controller.dart';
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
            Expanded(
              flex: 2,
              child: ListView.builder(
                itemCount: Provider.of<CardController>(context).cardItem.length,
                itemBuilder: (BuildContext context, int index) {
                  final cardItem = Provider.of<CardController>(
                    context,
                  ).cardItem[index];
                  return ItemListTile(cardItem: cardItem);
                },
              ),
            ),

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
