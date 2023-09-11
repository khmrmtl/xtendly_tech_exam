import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final double width;
  final double height;
  final double fontSize;
  const Logo(
      {super.key, this.width = 50, this.height = 50, this.fontSize = 10});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: const ShapeDecoration(
        color: Color(0xFFD9D9D9),
        shape: OvalBorder(),
      ),
      child: Center(
        child: Text(
          'LOGO',
          style: TextStyle(
            color: Colors.black,
            fontSize: fontSize,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
