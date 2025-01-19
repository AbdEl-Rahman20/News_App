import 'package:flutter/material.dart';
import 'package:news/ui/category/category_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'home_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CategoryScreen(),
    );
  }
}