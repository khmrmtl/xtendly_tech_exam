import 'package:flutter/material.dart';

class CustomDrawerIcon extends StatelessWidget {
  final Function() onclick;
  const CustomDrawerIcon({super.key, required this.onclick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onclick,
      child: SizedBox(
        width: 36,
        height: 28,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 36,
                height: 7.64,
                decoration: ShapeDecoration(
                  color: Color(0xFFD9D9D9),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 10.18,
              child: Container(
                width: 36,
                height: 7.64,
                decoration: ShapeDecoration(
                  color: Color(0xFFD9D9D9),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 20.36,
              child: Container(
                width: 36,
                height: 7.64,
                decoration: ShapeDecoration(
                  color: Color(0xFFD9D9D9),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
