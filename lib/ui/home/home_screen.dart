import 'package:flutter/material.dart';
import 'package:news/ui/category/category_fragment.dart';
import 'package:news/ui/widgets/drawer.dart';
// import 'package:news/ui/category/category_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'home_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home',style: Theme.of(context).textTheme.headlineLarge,),
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: HomeDrawer(),
      ),
      body: CategoryFragment(),
    );
  }
}