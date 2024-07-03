import 'package:online_store/model/food.dart';

class CartItem {
  Food food;
  List<Addon> selectedAddon;
  int quantity;

  CartItem({
    required this.food,
    this.quantity = 1,
    required this.selectedAddon,
  });

  double get totalPrice {
    double addonPrice =
        selectedAddon.fold(0, (sum, addon) => sum + addon.price);
    return (food.price + addonPrice) * quantity;
  }
}
