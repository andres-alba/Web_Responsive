import 'package:flutter/material.dart';

import 'home.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColorDark: Colors.white,
        fontFamily: "GoogleSansRegular",
      ),
      home: const HomeScreen(),
    );
  }
}
