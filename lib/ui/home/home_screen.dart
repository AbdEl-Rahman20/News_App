import 'package:flutter/material.dart';
import 'package:news/model/category_model.dart';
import 'package:news/ui/category/category_fragment.dart';
import 'package:news/ui/category/category_screen.dart';
import 'package:news/ui/widgets/drawer.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedCategory == null ? 'Home':selectedCategory!.title,style: Theme.of(context).textTheme.headlineLarge,),
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: HomeDrawer(),
      ),
      body: selectedCategory == null
      ? CategoryFragment(onViewAllClicked: onViewAllClicked,)
      : CategoryScreen(category: selectedCategory!,),
    );
  }

  CategoryModel? selectedCategory;

  void onViewAllClicked(CategoryModel newSelectedCategory){
    selectedCategory = newSelectedCategory;
    setState(() {
      
    });
  }
}