import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
import 'package:xtendly_tech_exam/application/sections/footer/widgets/collections.dart';
import 'package:xtendly_tech_exam/application/sections/footer/widgets/details.dart';
import 'package:xtendly_tech_exam/application/sections/footer/widgets/information.dart';
import 'package:xtendly_tech_exam/application/sections/footer/widgets/more.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile = ResponsiveBreakpoints.of(context).isMobile;
    return Container(
      decoration: const BoxDecoration(color: Color(0xffebeae8)),
      padding: EdgeInsets.fromLTRB(isMobile ? 25 : 88, isMobile ? 64 : 37,
          isMobile ? 25 : 88, isMobile ? 121 : 47),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(flex: 5, child: Details()),
              if (!isMobile)
                const Expanded(
                    child: Padding(
                  padding: EdgeInsets.only(top: 30.0),
                  child: Collections(),
                )),
              if (!isMobile)
                const Expanded(
                    child: Padding(
                  padding: EdgeInsets.only(top: 30.0),
                  child: Information(),
                )),
              if (!isMobile)
                const Expanded(
                    child: Padding(
                  padding: EdgeInsets.only(top: 30.0),
                  child: More(),
                )),
            ],
          ),
          if (isMobile)
            const Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Collections(),
            ),
          if (isMobile)
            const Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Information(),
            ),
          if (isMobile)
            const Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: More(),
            ),
        ],
      ),
    );
  }
}
