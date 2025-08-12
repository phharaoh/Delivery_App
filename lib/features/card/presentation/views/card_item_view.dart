import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:delivery_food/features/card/presentation/widgets/card_body.dart';
import 'package:delivery_food/features/card/presentation/manager/card_controller.dart';


class CardItemView extends StatelessWidget {
  const CardItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider.of<CardController>(context).cardItem.isEmpty
        ? Center(child: Text('Your Card is Empty'))
        : CardBody();
  }
}


