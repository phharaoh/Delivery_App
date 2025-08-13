import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:delivery_food/core/utils/app_colors.dart';
import 'package:delivery_food/features/card/data/card_model.dart';
import 'package:delivery_food/features/home/data/model/item_model.dart';
import 'package:delivery_food/features/card/presentation/manager/card_controller.dart';
import 'package:delivery_food/features/home/presentation/widgets/add_to_card_btn.dart';

class ListTileView extends StatefulWidget {
  const ListTileView({super.key});

  @override
  State<ListTileView> createState() => _ListTileViewState();
}

class _ListTileViewState extends State<ListTileView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: foodItems.length,

      itemBuilder: (context, index) {
        final item = foodItems[index];
        return ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(item.image, fit: BoxFit.fill),
          ),
          title: Text(item.title, style: TextStyle(fontSize: 13)),

          subtitle: Text(
            item.subtitle,
            style: TextStyle(color: AppColors.txtColor, fontSize: 10),
          ),
          trailing: GestureDetector(
            onTap: () {
              final cardController = Provider.of<CardController>(
                context,
                listen: false,
              );
              setState(() {
                item.isAdd = !item.isAdd;
              });

              if (!item.isAdd) {
                cardController.addToCard(
                  CardModel(
                    price: item.price,
                    id: item.id,
                    title: item.title,
                    subtitle: item.subtitle,
                    image: item.image,
                    quantity: 1,
                  ),
                );
              } else {
                cardController.removeFromCard(
                  CardModel(
                    price: item.price,
                    id: item.id,
                    title: item.title,
                    subtitle: item.subtitle,
                    image: item.image,
                    quantity: 1,
                  ),
                );
              }
            },
            child: item.isAdd
                ? const AddToCardBtn()
                : Text(
                    'Remove from Cart',
                    style: TextStyle(color: Colors.red, fontSize: 8),
                  ),
          ),
        );
      },
    );
  }
}
