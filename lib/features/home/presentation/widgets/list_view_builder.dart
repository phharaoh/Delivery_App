import 'package:flutter/material.dart';
import 'package:delivery_food/features/home/presentation/widgets/list_tile.dart';

class BuilderListView extends StatelessWidget {
  const BuilderListView({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) => ListTileView(),
    );
  }
}
