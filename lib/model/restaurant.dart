import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:online_store/model/cart_item.dart';
import 'package:online_store/model/food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    Food(
      name: "Classic CheeseBurger",
      description: "A juicy meat patty with melted cheese",
      imagePath: "lib/images/burgers/OIG1 (1).jpg",
      price: 4.99,
      categories: FoodCategories.burgers,
      avalibleAddons: [
        Addon(
          name: "Extra cheese",
          price: 0.99,
        ),
        Addon(
          name: "Extra Patty",
          price: 2.99,
        ),
        Addon(
          name: "Extra sauce",
          price: 0.99,
        ),
      ],
    ),
    Food(
      name: "Modern CheeseBurger",
      description: "A juicy meat patty with melted cheese and extra onions",
      imagePath: "lib/images/burgers/OIG1 (2).jpg",
      price: 4.99,
      categories: FoodCategories.burgers,
      avalibleAddons: [
        Addon(
          name: "Extra cheese",
          price: 0.99,
        ),
        Addon(
          name: "Extra Patty",
          price: 2.99,
        ),
        Addon(
          name: "Extra onion",
          price: 0.99,
        ),
      ],
    ),
    Food(
      name: "Zinger Burger",
      description: "A juicy zinger burger with crunch and juicy flavour",
      imagePath: "lib/images/burgers/OIG1 (3).jpg",
      price: 4.99,
      categories: FoodCategories.burgers,
      avalibleAddons: [
        Addon(
          name: "Extra cheese",
          price: 0.99,
        ),
        Addon(
          name: "Extra Patty",
          price: 2.99,
        ),
        Addon(
          name: "Extra lettus",
          price: 0.99,
        ),
      ],
    ),
    Food(
      name: "Sandwich Burger",
      description:
          "A juicy meat patty with melted cheese, extra onions and spices with tomato topping",
      imagePath: "lib/images/burgers/OIG1 (4).jpg",
      price: 4.99,
      categories: FoodCategories.burgers,
      avalibleAddons: [
        Addon(
          name: "Extra cheese",
          price: 0.99,
        ),
        Addon(
          name: "Extra Patty",
          price: 2.99,
        ),
        Addon(
          name: "Extra onion",
          price: 0.99,
        ),
      ],
    ),
    Food(
      name: "Modern CheeseBurger",
      description: "A juicy meat patty with melted cheese and extra onions",
      imagePath: "lib/images/burgers/OIG1 (2).jpg",
      price: 4.99,
      categories: FoodCategories.burgers,
      avalibleAddons: [
        Addon(
          name: "Extra cheese",
          price: 0.99,
        ),
        Addon(
          name: "Extra Patty",
          price: 2.99,
        ),
        Addon(
          name: "Extra onion",
          price: 0.99,
        ),
      ],
    ),
    Food(
      name: "Modern CheeseBurger",
      description: "A juicy meat patty with melted cheese and extra onions",
      imagePath: "lib/images/burgers/OIG1 (2).jpg",
      price: 4.99,
      categories: FoodCategories.burgers,
      avalibleAddons: [
        Addon(
          name: "Extra cheese",
          price: 0.99,
        ),
        Addon(
          name: "Extra Patty",
          price: 2.99,
        ),
        Addon(
          name: "Extra onion",
          price: 0.99,
        ),
      ],
    ),
    Food(
      name: "Modern CheeseBurger",
      description: "A juicy meat patty with melted cheese and extra onions",
      imagePath: "lib/images/burgers/OIG1 (2).jpg",
      price: 4.99,
      categories: FoodCategories.burgers,
      avalibleAddons: [
        Addon(
          name: "Extra cheese",
          price: 0.99,
        ),
        Addon(
          name: "Extra Patty",
          price: 2.99,
        ),
        Addon(
          name: "Extra onion",
          price: 0.99,
        ),
      ],
    ),
    Food(
      name: "Modern CheeseBurger",
      description: "A juicy meat patty with melted cheese and extra onions",
      imagePath: "lib/images/burgers/OIG1 (2).jpg",
      price: 4.99,
      categories: FoodCategories.burgers,
      avalibleAddons: [
        Addon(
          name: "Extra cheese",
          price: 0.99,
        ),
        Addon(
          name: "Extra Patty",
          price: 2.99,
        ),
        Addon(
          name: "Extra onion",
          price: 0.99,
        ),
      ],
    ),
    Food(
      name: "Modern CheeseBurger",
      description: "A juicy meat patty with melted cheese and extra onions",
      imagePath: "lib/images/burgers/OIG1 (2).jpg",
      price: 4.99,
      categories: FoodCategories.burgers,
      avalibleAddons: [
        Addon(
          name: "Extra cheese",
          price: 0.99,
        ),
        Addon(
          name: "Extra Patty",
          price: 2.99,
        ),
        Addon(
          name: "Extra onion",
          price: 0.99,
        ),
      ],
    ),
    Food(
      name: "Modern CheeseBurger",
      description: "A juicy meat patty with melted cheese and extra onions",
      imagePath: "lib/images/burgers/OIG1 (2).jpg",
      price: 4.99,
      categories: FoodCategories.burgers,
      avalibleAddons: [
        Addon(
          name: "Extra cheese",
          price: 0.99,
        ),
        Addon(
          name: "Extra Patty",
          price: 2.99,
        ),
        Addon(
          name: "Extra onion",
          price: 0.99,
        ),
      ],
    ),
    Food(
      name: "Modern CheeseBurger",
      description: "A juicy meat patty with melted cheese and extra onions",
      imagePath: "lib/images/burgers/OIG1 (2).jpg",
      price: 4.99,
      categories: FoodCategories.sides,
      avalibleAddons: [
        Addon(
          name: "Extra cheese",
          price: 0.99,
        ),
        Addon(
          name: "Extra Patty",
          price: 2.99,
        ),
        Addon(
          name: "Extra onion",
          price: 0.99,
        ),
      ],
    ),
    Food(
      name: "Modern CheeseBurger",
      description: "A juicy meat patty with melted cheese and extra onions",
      imagePath: "lib/images/burgers/OIG1 (2).jpg",
      price: 4.99,
      categories: FoodCategories.salads,
      avalibleAddons: [
        Addon(
          name: "Extra cheese",
          price: 0.99,
        ),
        Addon(
          name: "Extra Patty",
          price: 2.99,
        ),
        Addon(
          name: "Extra onion",
          price: 0.99,
        ),
      ],
    ),
    Food(
      name: "Modern CheeseBurger",
      description: "A juicy meat patty with melted cheese and extra onions",
      imagePath: "lib/images/burgers/OIG1 (2).jpg",
      price: 4.99,
      categories: FoodCategories.drinks,
      avalibleAddons: [
        Addon(
          name: "Extra cheese",
          price: 0.99,
        ),
        Addon(
          name: "Extra Patty",
          price: 2.99,
        ),
        Addon(
          name: "Extra onion",
          price: 0.99,
        ),
      ],
    ),
    Food(
      name: "Modern CheeseBurger",
      description: "A juicy meat patty with melted cheese and extra onions",
      imagePath: "lib/images/burgers/OIG1 (2).jpg",
      price: 4.99,
      categories: FoodCategories.desserts,
      avalibleAddons: [
        Addon(
          name: "Extra cheese",
          price: 0.99,
        ),
        Addon(
          name: "Extra Patty",
          price: 2.99,
        ),
        Addon(
          name: "Extra onion",
          price: 0.99,
        ),
      ],
    ),
    Food(
      name: "Modern CheeseBurger",
      description: "A juicy meat patty with melted cheese and extra onions",
      imagePath: "lib/images/burgers/OIG1 (2).jpg",
      price: 4.99,
      categories: FoodCategories.desserts,
      avalibleAddons: [
        Addon(
          name: "Extra cheese",
          price: 0.99,
        ),
        Addon(
          name: "Extra Patty",
          price: 2.99,
        ),
        Addon(
          name: "Extra onion",
          price: 0.99,
        ),
      ],
    ),
  ];

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  final List<CartItem> _cart = [];

  void addToCart(Food food, List<Addon> selectedAddon) {
    CartItem? cartItem = _cart.firstWhereOrNull(
      (item) {
        bool isSameFood = item.food == food;
        bool isSameAddon = const ListEquality().equals(
          item.selectedAddon,
          selectedAddon,
        );
        return isSameFood && isSameAddon;
      },
    );
    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      (_cart.add(
        CartItem(
          food: food,
          selectedAddon: selectedAddon,
        ),
      ));
    }
    notifyListeners();
  }

  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(
      cartItem,
    );
    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(
          cartIndex,
        );
      }
    }
    notifyListeners();
  }

  double getTotalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;
      for (Addon addon in cartItem.selectedAddon) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  int totalItemCount() {
    int totalItemCount = 0;
    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln(
      "Here your receipt...",
    );
    receipt.writeln();

    String formattedDate = DateFormat("yyyy-MM-dd HH:mm:ss").format(
      DateTime.now(),
    );
    receipt.writeln(
      formattedDate,
    );
    receipt.writeln();
    receipt.writeln(
      "--------",
    );
    for (final cartItem in _cart) {
      receipt.writeln(
        "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(
          cartItem.food.price,
        )}",
      );
      if (cartItem.selectedAddon.isNotEmpty) {
        receipt.writeln("   Add-on: ${_formatAddon(
          cartItem.selectedAddon,
        )}");
      }
      receipt.writeln();
    }
    receipt.writeln(
      "-------",
    );
    receipt.writeln();
    receipt.writeln(
      "Total Items: $totalItemCount",
    );
    receipt.writeln("Total Price: ${_formatPrice(
      getTotalPrice(),
    )}");

    return receipt.toString();
  }

  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(
      2,
    )}";
  }

  String _formatAddon(List<Addon> addon) {
    return addon
        .map((addon) => "${addon.name} (${_formatPrice(
              addon.price,
            )})")
        .join(", ");
  }
}
