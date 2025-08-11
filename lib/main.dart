import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:delivery_food/features/home/presentation/widgets/wrapper_home.dart';
import 'package:delivery_food/features/card/presentation/manager/card_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => CardController(),
      child: MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: WrapperHome(),
      ),
    );
  }
}
