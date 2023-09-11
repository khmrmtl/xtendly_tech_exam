import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

class SaleCard extends StatelessWidget {
  final String assetimagePath;
  final int discount;
  final String title;
  final String description;
  final Function() onclick;
  const SaleCard(
      {super.key,
      required this.assetimagePath,
      required this.discount,
      required this.title,
      required this.description,
      required this.onclick});

  @override
  Widget build(BuildContext context) {
    bool isMobile = ResponsiveBreakpoints.of(context).isMobile;
    double sizedBoxW = isMobile ? 24.0 : 45.5;
    double imageW = isMobile ? 141 : 272.9483337402344;
    return SizedBox(
      width: imageW + sizedBoxW,
      child: GestureDetector(
        onTap: onclick,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: AlignmentDirectional.topCenter,
              children: [
                Row(
                  children: [
                    Image.asset(
                      assetimagePath,
                      width: imageW,
                      height: isMobile ? 200 : 400,
                    ),
                    SizedBox(
                      width: sizedBoxW,
                    ),
                  ],
                ),
                Positioned(
                  top: isMobile ? 14 : 17,
                  right: 0,
                  child: Container(
                    width: isMobile ? 48 : 91,
                    height: isMobile ? 23 : 40,
                    decoration: const BoxDecoration(color: Color(0xffe0c99d)),
                    child: Center(
                      child: Text(
                        "$discount% OFF",
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: isMobile ? 10 : 18,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff010100),
                          height: isMobile ? 11 / 10 : 19 / 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: isMobile ? 15 : 18),
            Text(
              title,
              style: TextStyle(
                fontFamily: "Inter",
                fontSize: isMobile ? 15 : 18,
                fontWeight: FontWeight.w600,
                color: const Color(0xff000000),
                height: isMobile ? 16.622222900390625 / 15 : 22 / 18,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              description,
              style: TextStyle(
                fontFamily: "Inter",
                fontSize: isMobile ? 13 : 18,
                fontWeight: FontWeight.w400,
                color: const Color(0xff000000),
                height: isMobile ? 16.622222900390625 / 13 : 22 / 18,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
