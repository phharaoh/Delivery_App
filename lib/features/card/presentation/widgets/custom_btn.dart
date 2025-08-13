import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:delivery_food/core/utils/app_colors.dart';
import 'package:delivery_food/features/home/presentation/widgets/wrapper_home.dart';
import 'package:delivery_food/features/card/presentation/manager/card_controller.dart';

class CustomCheckOutBtn extends StatelessWidget {
  const CustomCheckOutBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 48,
      child: ElevatedButton(
        style: const ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(AppColors.secondColor),
        ),
        onPressed: () {
          Provider.of<CardController>(context, listen: false).clearCard();

          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const WrapperHome()),
          );
        },
        child: const Text(
          'Check Out',
          style: TextStyle(color: AppColors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
