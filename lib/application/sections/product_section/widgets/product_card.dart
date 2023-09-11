import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

class ProductCard extends StatelessWidget {
  final String assetImagePath;
  final String title;
  final Function() onClick;
  const ProductCard(
      {super.key,
      required this.assetImagePath,
      required this.title,
      required this.onClick});

  @override
  Widget build(BuildContext context) {
    bool isMobile = ResponsiveBreakpoints.of(context).isMobile;
    return Container(
      width: isMobile ? 204.71124267578125 : 409.4224853515625,
      height: isMobile ? 300 : 600,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image:
              AssetImage(assetImagePath), // Replace with your asset image path
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: isMobile ? 261.5 : 521.65),
          GestureDetector(
            onTap: onClick,
            child: Container(
              width: isMobile ? 127.65957641601562 : 198.78419494628906,
              height: isMobile ? 25.987842559814453 : 51.975685119628906,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color(0xffe4e4e4)),
              child: Center(
                child: Text(title,
                    style: TextStyle(
                      fontSize: isMobile ? 15 : 24,
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
