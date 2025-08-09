 import 'package:flutter/material.dart';

builderButton({
    required Color color,
    required Color textColor,
    required String text,
    required void Function()? onPress,
  }) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(22)),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(
            horizontal: 30,
            vertical: 8,
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }