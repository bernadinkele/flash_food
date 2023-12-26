class FoodModel {
  final String name;
  final double price;
  final double stars;
  final String description;
  final List<String> images;

  FoodModel(
      {required this.name,
      required this.description,
      required this.images,
      required this.price,
      required this.stars});
}

