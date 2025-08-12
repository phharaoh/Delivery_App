import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:delivery_food/core/utils/app_colors.dart';
import 'package:delivery_food/features/card/presentation/widgets/custom_btn.dart';
import 'package:delivery_food/features/card/presentation/manager/card_controller.dart';
import 'package:delivery_food/features/card/presentation/widgets/custom_list_tile.dart';

class CardBody extends StatelessWidget {
  const CardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CardController>(
      builder: (context, cardController, child) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: ListView.builder(
                  itemCount: cardController.cardItem.length,
                  itemBuilder: (BuildContext context, int index) {
                    final cardItem = Provider.of<CardController>(
                      context,
                    ).cardItem[index];
                    return ListTile(
                      leading: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(cardItem.image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      title: Text(
                        cardItem.title,
                        style: TextStyle(fontSize: 13),
                      ),
                      subtitle: Text(
                        cardItem.subtitle,
                        style: TextStyle(
                          color: AppColors.txtColor,
                          fontSize: 10,
                        ),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () =>
                                cardController.addOneToCouter(cardItem),
                            icon: Icon(Icons.add),
                          ),
                          Text(cardItem.quantity.toString()),
                          IconButton(
                            onPressed: () =>
                                cardController.subOneFromCouter(cardItem),
                            icon: Icon(Icons.remove),
                          ),
                        ],
                      ),
                    );
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
        );
      },
    );
  }
}
