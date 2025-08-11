import 'package:flutter/material.dart';
import 'package:delivery_food/features/card/data/card_model.dart';

class CardController extends ChangeNotifier {
  List<CardModel> cardItem = [];

  void addToCard(CardModel item) {
    cardItem.add(item);
    notifyListeners();
  }

  void removeFromCard(CardModel item) {
    cardItem.remove(item);
    notifyListeners();
  }
}
