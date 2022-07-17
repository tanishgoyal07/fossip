import 'package:flutter/material.dart';
import 'package:fossip/order_screen.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Fossip",
      debugShowCheckedModeBanner: false,
      home: OrderScreen(),
    );
  }
}
