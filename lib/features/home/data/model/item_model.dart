class Item {
  String id;
  String title;
  String subtitle;
  String image;
  bool isAdd;
  Item({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.image,
    this.isAdd = true,
  });
}

List<Item> foodItems = List.generate(
  100,
  (index) => Item(
    id: 'item_${index + 1}',
    title: 'Item ${index + 1}',
    subtitle: 'subtitle for item ${index + 1}',
    image: 'assets/images/pro.png',
  ),
);
