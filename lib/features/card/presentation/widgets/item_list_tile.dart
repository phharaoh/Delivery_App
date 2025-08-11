import 'package:flutter/material.dart';
import 'package:delivery_food/core/utils/app_colors.dart';
import 'package:delivery_food/features/card/data/card_model.dart';

class ItemListTile extends StatelessWidget {
  const ItemListTile({super.key, required this.cardItem});
 final CardModel cardItem;
  @override
  Widget build(BuildContext context) {
    return ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(cardItem.image, fit: BoxFit.fill),
              ),
              title: Text(cardItem.title, style: const TextStyle(fontSize: 13)),
              subtitle: Text(
                cardItem.subtitle,
                style: const TextStyle(color: AppColors.secondColor, fontSize: 10),
              ),
              trailing: Text('Qty: ${cardItem.quantity}', style: const TextStyle(fontSize: 12)),
     ) ;
  }
}