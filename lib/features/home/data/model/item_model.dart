// fake_items.dart
// Simple Dart model and generator for 100 fake items

class Item {
  final String title;
  final String subtitle;
  final String image;
  bool isAddedItem; // path to asset

  Item({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.isAddedItem,
  });

  @override
  String toString() =>
      'Item(title: $title, subtitle: $subtitle, image: $image)';
}

/// Generate a list of fake items. By default it generates 100 items.
List<Item> generateFakeItems([int count = 100]) {
  return List<Item>.generate(
    count,
    (index) => Item(
      title: 'Product ${index + 1}',
      subtitle: 'This is the description for product ${index + 1}.',
      image: 'assets/images/pro.png',
      isAddedItem: false,
    ),
  );
}

// Example usage:
// final items = generateFakeItems();
// print(items.first);
