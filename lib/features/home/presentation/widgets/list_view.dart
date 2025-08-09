import 'package:flutter/material.dart';
import 'package:delivery_food/core/utils/app_colors.dart';

class BuilderListView extends StatelessWidget {
  const BuilderListView({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,

      itemBuilder: (context, index) => ListTile(
        title: const Text('Burger Combo', style: TextStyle(fontSize: 13)),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset('assets/images/pro.png', fit: BoxFit.fill),
        ),
        subtitle: const Text(
          'Burger Combo with fries',
          style: TextStyle(color: AppColors.secondColor, fontSize: 10),
        ),
        trailing: GestureDetector(
          onTap: () {
            //TODO: Implement add to cart functionality
          },
          child: Container(
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
                ' List View',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
