import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

import '../../../widgets/logo.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile = ResponsiveBreakpoints.of(context).isMobile;
    return Padding(
      padding: const EdgeInsets.only(right: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 25),
          Logo(
            width: 130,
            height: 130,
            fontSize: isMobile ? 20 : 25,
          ),
          const SizedBox(height: 25),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.near_me),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff676767),
                  ),
                  textAlign: TextAlign.left,
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.smartphone),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  "Lorem ipsum",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff676767),
                  ),
                  textAlign: TextAlign.left,
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.email_outlined),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  "Lorem ipsum dolor sit amet",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff676767),
                  ),
                  textAlign: TextAlign.left,
                ),
              )
            ],
          ),
          const SizedBox(height: 25),
          Image.asset(
            "assets/images/6.png",
            width: 214,
            height: 64,
          ),
        ],
      ),
    );
  }
}
