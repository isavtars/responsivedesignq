import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../../../constants.dart';
import '../../../responsive.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: [
          // We need this back button on mobile only
          if (Responsive.isMobile(context))
            const BackButton(
              color: Colors.red,
            ),
          IconButton(
            icon: WebsafeSvg.asset(
              "assets/Icons/Trash.svg",
              width: 24,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: WebsafeSvg.asset(
              "assets/Icons/Reply.svg",
              width: 24,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: WebsafeSvg.asset(
              "assets/Icons/Reply all.svg",
              width: 24,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: WebsafeSvg.asset(
              "assets/Icons/Transfer.svg",
              width: 24,
            ),
            onPressed: () {},
          ),
          const Spacer(),
          // We don't need print option on mobile
          if (Responsive.isDesktop(context))
            IconButton(
              icon: WebsafeSvg.asset(
                "assets/Icons/Printer.svg",
                width: 24,
              ),
              onPressed: () {},
            ),
          IconButton(
            icon: WebsafeSvg.asset(
              "assets/Icons/Markup.svg",
              width: 24,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: WebsafeSvg.asset(
              "assets/Icons/More vertical.svg",
              width: 24,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
