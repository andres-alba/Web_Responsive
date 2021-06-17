import 'package:flutter/material.dart';
import 'package:tecno_sas/small_screen.dart';
import 'large_screen.dart';
import 'responsive.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      largeScreen: Scaffold(
        backgroundColor: Colors.white,
        body: LargeScreen(),
      ),
      smallScreen: Scaffold(
        body: SmallScreen(),
      ),
    );
  }
}
