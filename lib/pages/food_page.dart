import 'package:flutter/material.dart';
import 'package:online_store/components/my_button.dart';
import 'package:online_store/model/food.dart';
import 'package:online_store/model/restaurant.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddon = {};
  FoodPage({
    super.key,
    required this.food,
  }) {
    for (Addon addon in food.avalibleAddons) {
      selectedAddon[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  void addToCart(Food food, Map<Addon, bool> selectedAddon) {
    Navigator.pop(context);

    List<Addon> currentlySelectedAddon = [];
    for (Addon addon in widget.food.avalibleAddons) {
      if (widget.selectedAddon[addon] == true) {
        currentlySelectedAddon.add(
          addon,
        );
      }
    }
    context.read<Restaurant>().addToCart(
          food,
          currentlySelectedAddon,
        );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  widget.food.imagePath,
                  fit: BoxFit.fill,
                  height: 300,
                ),
                Padding(
                  padding: const EdgeInsets.all(
                    25.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.food.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '\$${widget.food.price}',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        widget.food.description,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Divider(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      Text(
                        "Add-on",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            16,
                          ),
                          border: Border.all(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: widget.food.avalibleAddons.length,
                          itemBuilder: (context, index) {
                            Addon addon = widget.food.avalibleAddons[index];
                            return CheckboxListTile(
                              title: Text(
                                addon.name,
                              ),
                              subtitle: Text(
                                '\$${addon.price.toString()}',
                              ),
                              value: widget.selectedAddon[addon],
                              onChanged: (bool? value) {
                                setState(() {
                                  widget.selectedAddon[addon] = value!;
                                });
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                MyButton(
                  onTap: () => addToCart(
                    widget.food,
                    widget.selectedAddon,
                  ),
                  text: "Add to Cart",
                ),
                const SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ),
        SafeArea(
          child: Opacity(
            opacity: 0.6,
            child: Container(
              margin: const EdgeInsets.only(
                left: 25,
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
