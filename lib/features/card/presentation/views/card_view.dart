import 'package:flutter/material.dart';
import 'package:delivery_food/core/utils/app_colors.dart';
import 'package:delivery_food/features/card/presentation/widgets/custom_btn.dart';
import 'package:delivery_food/features/card/presentation/widgets/custom_increment_btn.dart';

class CardView extends StatefulWidget {
  const CardView({super.key});

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  int counter = 1;

  void icrement() {
    setState(() {
      counter++;
    });
  }

  void decrement() {
    counter > 0
        ? setState(() {
            counter--;
          })
        : counter = 0;
  }

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
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          children: [_buildListTile(), Spacer(), buildCheckOutButton()],
        ),
      ),
    );
  }

  _buildListTile() {
    return ListTile(
      title: const Text('Burger Combo', style: TextStyle(fontSize: 13)),
      leading: Image.asset('assets/images/pro.png', fit: BoxFit.cover),
      subtitle: const Text(
        'Burger Combo with fries',
        style: TextStyle(color: AppColors.secondColor, fontSize: 10),
      ),
      trailing: SizedBox(
        width: 100,
        child: Row(
          children: [
            elevatedButton(icrement, Icons.add),
            Text('$counter'),
            elevatedButton(decrement, Icons.remove),
          ],
        ),
      ),
    );
  }
}
