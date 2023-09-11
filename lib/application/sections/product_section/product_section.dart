import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
import 'widgets/product_card.dart';

class ProductSection extends StatelessWidget {
  const ProductSection({super.key});

  void _productOnclick(BuildContext context) {
    // TODO: product onclick
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text("TODO: product onclick")));
  }

  @override
  Widget build(BuildContext context) {
    bool isMobile = ResponsiveBreakpoints.of(context).isMobile;
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(color: Color(0xffebeae8)),
      child: Column(
        children: [
          SizedBox(height: isMobile ? 53.0 : 116.0),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 39.58,
            runSpacing: 32,
            children: [
              ProductCard(
                assetImagePath: "assets/images/1.png",
                title: "Sweatshits",
                onClick: () => _productOnclick(context),
              ),
              ProductCard(
                assetImagePath: "assets/images/3.png",
                title: "Hoodies",
                onClick: () => _productOnclick(context),
              ),
              ProductCard(
                assetImagePath: "assets/images/1.png",
                title: "Pair",
                onClick: () => _productOnclick(context),
              ),
            ],
          ),
          if (!isMobile) const SizedBox(height: 61),
          if (!isMobile)
            const Row(
              children: [
                Spacer(),
                Expanded(
                  flex: 2,
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Spacer(),
              ],
            ),
          SizedBox(height: isMobile ? 100.0 : 61),
        ],
      ),
    );
  }
}
