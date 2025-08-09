import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

builderSlider() {
  return CarouselSlider(
    options: CarouselOptions(height: 180.0),
    items: ['assets/images/pro.png'].map((i) {
      return Builder(
        builder: (BuildContext context) {
          return Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              image: DecorationImage(image: AssetImage(i), fit: BoxFit.cover),
            ),
          );
        },
      );
    }).toList(),
  );
}
