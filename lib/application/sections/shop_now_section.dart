import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

class ShopNowSection extends StatelessWidget {
  const ShopNowSection({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile = ResponsiveBreakpoints.of(context).isMobile;

    return Container(
      width: double.infinity,
      height: isMobile ? 812 : 1024,
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.black, width: 2.0), // Optional: Add a border
        image: const DecorationImage(
          image: AssetImage(
              'assets/images/5.png'), // Replace with your asset image path
          fit: BoxFit.fill,
        ),
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          SizedBox(
            width: isMobile ? 388 : 1440,
            height: double.infinity,
            child: Stack(
              children: [
                Positioned(
                  top: isMobile ? 112 : 215,
                  right: 0,
                  bottom: isMobile ? 503 : 277,
                  child: Image.asset(
                    "assets/images/2.png",
                    width: isMobile ? 267 : 724,
                    height: isMobile ? 197 : 532,
                  ),
                ),
                if (isMobile)
                  Positioned(
                    top: 294,
                    left: 19,
                    bottom: 224,
                    child: Image.asset(
                      "assets/images/3.png",
                      width: 197,
                      height: 294,
                    ),
                  ),
                Positioned(
                  top: isMobile ? 497 : 255,
                  left: isMobile ? null : 0,
                  right: isMobile ? 27 : null,
                  bottom: isMobile ? 52 : 255,
                  child: Image.asset(
                    "assets/images/4.png",
                    width: isMobile ? 187 : 381,
                    height: isMobile ? 263 : 514,
                  ),
                ),
                if (!isMobile)
                  Positioned(
                    top: 289,
                    left: 355,
                    bottom: 171,
                    child: Image.asset(
                      "assets/images/3.png",
                      width: 381,
                      height: 514,
                    ),
                  ),
              ],
            ),
          ),
          // button
          Positioned(
            top: isMobile ? 406 : 805,
            bottom: isMobile ? 359 : 162,
            child: ElevatedButton(
              style: ButtonStyle(
                // minimumSize: MaterialStateProperty.all(
                //   Size(
                //     isMobile ? 179.75439453125 : 218,
                //     isMobile ? 47 : 57,
                //   ),
                // ),
                backgroundColor: MaterialStateProperty.all(Colors.white),
                elevation: MaterialStateProperty.all(
                    20.0), // Set the elevation value for the shadow
              ),
              onPressed: () {
                // TODO: shop now onclick
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("TODO: shop now onclick")));
              },
              child: Text(
                "Shop Now",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: isMobile ? 20 : 24,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
