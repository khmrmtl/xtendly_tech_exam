import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

import 'widgets/sale_card.dart';

class SaleSection extends StatefulWidget {
  const SaleSection({super.key});

  @override
  State<SaleSection> createState() => _SaleSectionState();
}

class _SaleSectionState extends State<SaleSection> {
  final List<SaleCard> _sales = [];

  @override
  Widget build(BuildContext context) {
    bool isMobile = ResponsiveBreakpoints.of(context).isMobile;
    if (_sales.isEmpty) {
      _showMoreProducts(isMobile, init: true);
    }
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Material(
            elevation: 3.0,
            child: SizedBox(
              width: double.infinity,
              height: isMobile ? 46 : 77,
              child: Row(
                children: [
                  const Spacer(),
                  for (int i = 0; i < _getSaleLogoNumber(context); i++)
                    Expanded(
                      child: Text(
                        "SALE",
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: isMobile ? 35 : 50,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xffd04242),
                          height: isMobile ? 36 / 35 : 61 / 50,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  const Spacer(),
                ],
              ),
            ),
          ),
          SizedBox(height: isMobile ? 69 : 145),
          Padding(
            padding: EdgeInsets.only(left: isMobile ? 24.0 : 45.5),
            child: Wrap(
              spacing: isMobile ? 4 : 21,
              runSpacing: isMobile ? 32 : 42,
              alignment: WrapAlignment.center,
              children: _sales,
            ),
          ),
          SizedBox(height: isMobile ? 45.98 : 58),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
              elevation: MaterialStateProperty.all(
                  20.0), // Set the elevation value for the shadow
            ),
            child: Text(
              "More",
              style: TextStyle(
                color: Colors.black,
                fontSize: isMobile ? 18 : 24,
              ),
            ),
            onPressed: () => _showMoreProducts(isMobile),
          ),
          SizedBox(height: isMobile ? 72 : 80),
        ],
      ),
    );
  }

  void _showMoreProducts(bool isMobile, {bool init = false}) {
    for (int i = 0; i < (isMobile ? 2 : 4); i++) {
      _sales.add(
        SaleCard(
          assetimagePath: "assets/images/1.png",
          discount: 15,
          title: "LOREM IPSUM",
          description: "Lorem ipsum",
          onclick: () {},
        ),
      );
    }
    if (!init) setState(() {});
  }

  int _getSaleLogoNumber(BuildContext context) {
    if (ResponsiveBreakpoints.of(context).isMobile) {
      return 1;
    } else if (ResponsiveBreakpoints.of(context).isTablet) {
      return 3;
    } else {
      return 5;
    }
  }
}
