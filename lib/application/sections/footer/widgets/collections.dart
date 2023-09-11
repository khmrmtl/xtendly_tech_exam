import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

class Collections extends StatefulWidget {
  const Collections({super.key});

  @override
  State<Collections> createState() => _CollectionsState();
}

class _CollectionsState extends State<Collections> {
  final TextStyle style = const TextStyle(
    fontFamily: "Inter",
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: Color(0xff676767),
    height: 17 / 15,
  );

  bool expanded = false;

  void _collectionOnclick(BuildContext context) {
    // TODO: collection onclick
    ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("TODO: collection onclick")));
  }

  @override
  Widget build(BuildContext context) {
    bool isMobile = ResponsiveBreakpoints.of(context).isMobile;
    List<Widget> collections = List.generate(
      6,
      (index) => Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: GestureDetector(
          onTap: () => _collectionOnclick(context),
          child: Text(
            "Lorem ipsum ",
            style: style,
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 15),
          GestureDetector(
            onTap: isMobile
                ? () {
                    setState(() {
                      expanded = !expanded;
                    });
                  }
                : null,
            child: const Text(
              "COLLECTION",
              style: TextStyle(
                fontFamily: "Inter",
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xff000000),
                height: 22 / 18,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 15),
          if (!isMobile || expanded) ...collections
        ],
      ),
    );
  }
}
