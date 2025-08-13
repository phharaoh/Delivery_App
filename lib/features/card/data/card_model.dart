class CardModel {
  final String id;
  final String title;
  final String subtitle;
  final String image;
  final int quantity;
  final double price;

  CardModel({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.quantity,
    required this.price,
  });

  CardModel copyWith({
    String? id,
    String? title,
    String? subtitle,
    String? image,
    int? quantity,
    double? price,
  }) {
    return CardModel(
      id: id ?? this.id,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      image: image ?? this.image,
      quantity: quantity ?? this.quantity,
      price: price ?? this.price,
    );
  }
}
