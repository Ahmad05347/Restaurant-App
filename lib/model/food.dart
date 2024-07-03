class Food {
  final String name;
  final String description;
  final String imagePath;
  final double price;
  final FoodCategories categories;
  List<Addon> avalibleAddons;

  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.categories,
    required this.avalibleAddons,
  });
}

enum FoodCategories {
  burgers,
  salads,
  sides,
  desserts,
  drinks,
}

class Addon {
  final String name;
  final double price;

  Addon({
    required this.name,
    required this.price,
  });
}
