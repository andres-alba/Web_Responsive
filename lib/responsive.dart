import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget smallScreen;
  final Widget largeScreen;

  const ResponsiveWidget({
    Key? key,
    required this.smallScreen,
    required this.largeScreen,
  }) : super(key: key);

  // This isMobile, isTablet, isDesktop help us later
  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= 850;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    // If our width is more than 1100 then we consider it a desktop
    if (_size.width >= 1100) {
      return largeScreen;
    }
    // Or less then that we called it mobile
    else {
      return smallScreen;
    }
  }
}
