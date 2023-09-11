import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
import 'package:xtendly_tech_exam/application/sections/footer/custom_footer.dart';
import 'package:xtendly_tech_exam/application/sections/product_section/product_section.dart';
import 'package:xtendly_tech_exam/application/sections/sale_section/sale_section.dart';
import 'package:xtendly_tech_exam/application/sections/shop_now_section.dart';
import 'package:xtendly_tech_exam/application/widgets/navbar_items.dart';
import 'package:xtendly_tech_exam/application/widgets/search_widget.dart';
import 'sections/responsive_app_bar.dart';
import 'widgets/logo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey(); // Create a key

  @override
  Widget build(BuildContext context) {
    bool largerThanMobile =
        ResponsiveBreakpoints.of(context).largerThan(MOBILE);
    return Scaffold(
      key: scaffoldKey,
      drawer: largerThanMobile
          ? null
          : Drawer(
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    const Logo(),
                    const SizedBox(height: 20),
                    const SearchWidget(),
                    const SizedBox(height: 10),
                    ...NavbarItems.getItems(context)
                        .map(
                          (e) => Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: e,
                          ),
                        )
                        .toList(),
                  ],
                ),
              ),
            ),
      body: Stack(
        children: [
          SizedBox(
            // Background
            height: double.infinity,
            width: MediaQuery.of(context).size.width,
            child: const Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ShopNowSection(),
                    ProductSection(),
                    SaleSection(),
                    Footer(),
                  ],
                ),
              ),
            ),
          ),

          Container(), // Required some widget in between to float AppBar

          // NAV BAR
          Positioned(
            top: 10.0,
            left: 0,
            right: 0,
            child: SafeArea(
              child: ResponsiveAppBar(scaffoldKey: scaffoldKey),
            ),
          )
        ],
      ),
    );
  }
}
