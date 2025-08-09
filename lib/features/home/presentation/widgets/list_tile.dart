import 'package:flutter/material.dart';
import 'package:delivery_food/core/utils/app_colors.dart';
import 'package:delivery_food/features/home/presentation/widgets/add_to_card_btn.dart';

class ListTileView extends StatefulWidget {
  const ListTileView({super.key});

  @override
  State<ListTileView> createState() => _ListTileViewState();
}

class _ListTileViewState extends State<ListTileView> {
  bool isAdded = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset('assets/images/pro.png', fit: BoxFit.fill),
      ),
      title: const Text('Burger Combo', style: TextStyle(fontSize: 13)),

      subtitle: const Text(
        'Burger Combo with fries',
        style: TextStyle(color: AppColors.secondColor, fontSize: 10),
      ),
      trailing: GestureDetector(
        onTap: () {
          setState(() {
            isAdded = !isAdded;
          });
        },
        child: !isAdded
            ? const AddToCardBtn()
            : Text(
                'Remove from Cart',
                style: TextStyle(color: Colors.red, fontSize: 8),
              ),
      ),
    );
  }
}
