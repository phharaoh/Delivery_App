import 'package:flutter/material.dart';
 import 'package:delivery_food/features/home/presentation/widgets/grid_list_tile.dart';

buildGridView() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of columns
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 3 / 2,
      ),
      itemCount: 20,
      itemBuilder: (context, index) => buildGridTile(),
    );
  }
