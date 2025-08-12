import 'package:flutter/material.dart';
import 'package:delivery_food/features/card/data/card_model.dart';

class CardController extends ChangeNotifier {
  List<CardModel> cardItem = [];

  //! add Items to Card list
  void addToCard(CardModel item) {
    cardItem.add(item);
    notifyListeners();
  }

  //! remove Items from Card list
  void removeFromCard(CardModel item) {
    cardItem.removeWhere((element) => element.id == item.id);
    (item);
    notifyListeners();
  }

  //! Clear all Items from Card list
  void clearCard() {
    cardItem.clear();
    notifyListeners();
  }

  //! Add 1 to counter
  void addOneToCouter(CardModel item) {
    CardModel selectedItem = cardItem.firstWhere((e) => e.id == item.id);
    selectedItem = selectedItem.copyWith(quantity: selectedItem.quantity + 1);
    notifyListeners();
  }

  //!sub 1 from counter
  void subOneFromCouter(CardModel item) {
    CardModel selectedItem = cardItem.firstWhere((e) => e.id == item.id);
    selectedItem = selectedItem.copyWith(quantity: selectedItem.quantity - 1);
    notifyListeners();
  }

  //TODO : calc Sub Total
  //TODO : calc  Total
}
