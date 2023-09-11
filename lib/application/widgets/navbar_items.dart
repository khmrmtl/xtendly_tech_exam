import 'package:flutter/material.dart';

class NavbarItems {
  static const List<String> _items = [
    "HOME",
    "NEW ARRIVAL",
    "SHOP",
    "LAST COLLECTION",
    "MEN",
    "WOMEN"
  ];

  static List<Widget> getItems(BuildContext context) {
    return _items.map((e) => _getItem(e, context)).toList();
  }

  static Widget _getItem(String title, BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO:  onclick
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("TODO: $title onclick")));
      },
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
