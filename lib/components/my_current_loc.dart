import 'package:flutter/material.dart';

class MyLocation extends StatelessWidget {
  const MyLocation({super.key});

  void openLocationSearchBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(
          "You'r Location",
        ),
        content: const TextField(
          decoration: InputDecoration(
            hintText: "Enter address...",
          ),
        ),
        actions: [
          MaterialButton(
            onPressed: () => Navigator.pop(
              context,
            ),
            child: const Text(
              "Cancel",
            ),
          ),
          MaterialButton(
            onPressed: () => Navigator.pop(
              context,
            ),
            child: const Text(
              "Save",
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        25.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deliver Now",
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(
              context,
            ),
            child: Row(
              children: [
                Text(
                  "Lahore",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_down_outlined,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
