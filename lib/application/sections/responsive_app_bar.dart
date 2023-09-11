import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

import '../widgets/drawer.dart';
import '../widgets/logo.dart';
import '../widgets/navbar_items.dart';
import '../widgets/search_widget.dart';

class ResponsiveAppBar extends StatelessWidget {
  const ResponsiveAppBar({
    super.key,
    required this.scaffoldKey,
  });

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    // bool smallerThanDesktop =
    //     ResponsiveBreakpoints.of(context).smallerThan(DESKTOP);
    bool isDesktop = ResponsiveBreakpoints.of(context).isDesktop;

    return Container(
      // width: 1440,
      // height: 66,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        // leading: largerThanMobile
        //     ? Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: const Logo(),
        //       )
        //     : CustomDrawer(
        //         onclick: () => scaffoldKey.currentState!.openDrawer(),
        //       ),
        // leading: Builder(
        //   builder: (BuildContext context) {
        //     return const SizedBox.shrink();
        //     return CustomDrawerIcon(
        //       onclick: () => Scaffold.of(context).openDrawer(),
        //     );
        //   },
        // ),
        primary: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: 10),
            isDesktop
                ? const Logo()
                : CustomDrawerIcon(
                    onclick: () => scaffoldKey.currentState!.openDrawer(),
                  ),
            Spacer(),
            if (!isDesktop) const Logo(),
            if (isDesktop)
              Expanded(
                flex: 6,
                child: Wrap(
                  runSpacing: 0,
                  children: NavbarItems.getItems(context)
                      .map((e) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: e,
                          ))
                      .toList(),
                ),
              ),
            const Spacer(),
            if (isDesktop) Expanded(flex: 2, child: const SearchWidget()),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.work_history_outlined, color: Colors.black),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
          IconButton(
            icon: Icon(Icons.star_outline, color: Colors.black),
            onPressed: () {},
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
    );
  }
}
