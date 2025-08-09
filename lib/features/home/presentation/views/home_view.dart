import 'package:flutter/material.dart';
import 'package:delivery_food/core/utils/app_colors.dart';
import 'package:delivery_food/features/home/presentation/widgets/slider.dart';
import 'package:delivery_food/features/home/presentation/widgets/grid_view_builder.dart';
import 'package:delivery_food/features/home/presentation/widgets/list_view_builder.dart';
import 'package:delivery_food/features/home/presentation/widgets/search_form_feild.dart';
import 'package:delivery_food/features/home/presentation/widgets/featured_items_txt.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List<Widget> viewBuilder;
  int _selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    viewBuilder = <Widget>[BuilderListView(), buildGridView()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //! App Bar
      appBar: AppBar(
        title: const Text(
          'Food Delivery',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: const [Icon(Icons.shopping_cart_outlined)],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Search Bar
            builderFormField(),

            ///Slider Bar
            builderSlider(),

            ///FeaturedItems
            FeaturedItemsTxt(),

            //! Switch Button
            _buildSwitchButton(),
            Expanded(
              child: _selectedIndex == 0 ? BuilderListView() : buildGridView(),
            ),
          ],
        ),
      ),
    );
  }

  _buildSwitchButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: ['List View', 'Grid View'].asMap().entries.map((entry) {
        final index = entry.key;
        final title = entry.value;
        return GestureDetector(
          onTap: () => setState(() => _selectedIndex = index),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(22)),
              color: _selectedIndex == index
                  ? AppColors.secondColor
                  : AppColors.primaryColor,
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.symmetric(
                horizontal: 30,
                vertical: 8,
              ),
              child: Text(
                title,
                style: TextStyle(
                  color: _selectedIndex == index
                      ? AppColors.primaryColor
                      : AppColors.secondColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
